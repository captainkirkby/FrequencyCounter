/*
 * Frequency Counter
 * Counts at 16MHz with a resolution of 62.5ns
 * Displays result on an LCD
 *
 * Author: Dylan Kirkby
 * Date: 12/2/16
 */

#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include "lcd.h"

#define CYCLES_PER_OVERFLOW (1UL << 16)
#define MILIHERTZ_PER_CYCLE (16000000000ULL)
#define STR_LEN 33
#define DEBUG 0

// See spreadsheet for experimental fudge factor determination
// http://tinyurl.com/jcfmb7h
#define FUDGE_FACTOR ((188.547 * overflows) - 273.71)


typedef enum {
    WAITING,
    COUNTING,
    DISPLAYING
} State;

// Volatile shared memory
volatile uint32_t overflows;
volatile uint32_t cyclesElapsed;
volatile State state;

// Nonvolatile globals
char displayString[STR_LEN];

void init(void);
void initInputs(void);
void initINT0(void);
void initTimer(void);
void loop(void);

int main(void) {
    init();
    
    while(1) {
        loop();
    }
}

void init(void) {
    initInputs();
    initINT0();
    initTimer();
    // Initialize display, cursor off
    lcd_init(LCD_DISP_ON);
    sei();
}

void initInputs(void) {
    // Set PD2 (INT0 pin) as an input (no pull-up)
    DDRB &= ~(1 << PD2);
}

void initINT0(void) {
    // Falling edge of INT0 generates interrupt request
    EICRA |= (1 << ISC01);
    EICRA &= ~(1 << ISC00);     // EICRA = 0bXXXXXX10

    // Enable INT0 Interrupt
    EIMSK |= (1 << INT0);       // EIMSK = 0bXXXXXXX1
}

void initTimer(void) {
    // Set Prescaler to 1
    TCCR1B |= (1 << CS10);
    TCCR1B &= ~(1 << CS12);     // TCCR1B = 0bXXXXX0X1

    // Enable Overflow Interrupt
    TIMSK1 |= (1 << TOIE1);
}

// 16000000 cycles = 1.000 Hz = 1,000 mHz
// 1600000 cycles = 10.000 Hz = 10,000 mHz
// 160000 cycles = 100.000 Hz = 100,000 mHz
// 16000 cycles = 1000.000 Hz = 1000,000 mHz
// frequency (mHz) = 16,000,000,000 / cycles 

void loop(void) {
    State nextState;
    uint32_t millihertz;
    uint32_t freqInt;
    uint32_t freqFrac;

    if (state == DISPLAYING) {
        // Display Data
        cyclesElapsed += FUDGE_FACTOR;
        millihertz = MILIHERTZ_PER_CYCLE / cyclesElapsed;       

        freqInt = millihertz / 1000;
        freqFrac = millihertz % 1000;
    
        // Write to LCD
        lcd_clrscr();
        sprintf(displayString, "%lu.", freqInt);
        lcd_puts(displayString);
        sprintf(displayString, "%03lu Hz\n", freqFrac);
        lcd_puts(displayString);

        if (DEBUG) {
            sprintf(displayString, "%lu\n", cyclesElapsed);
            lcd_puts(displayString);
            sprintf(displayString, "%lu\n", overflows);
            lcd_puts(displayString);        
        }

        nextState = WAITING;
    }
    else {
        nextState = state;
    }

    state = nextState;
}

// Timer Overflow Interrupt
ISR(TIMER1_OVF_vect) {
    ++overflows;
}

// Falling Edge Interrupt
ISR(INT0_vect) {
    State nextState;
    
    if (state == WAITING) {
        // Got a falling edge, start counting
        // Reset Timer to zero
        TCNT1 = 0;
        // Reset overflow count
        overflows = 0;
        // Reset overflow interrupt flag by writing a one to TOV
        TIFR1 |= (1 << TOV1);

        nextState = COUNTING;
    }
    else if (state == COUNTING) {
        cyclesElapsed = TCNT1 + overflows * CYCLES_PER_OVERFLOW;
        // Got a falling edge, stop counting and display results
        nextState = DISPLAYING;
    }
    else {
        // Unknown state
        nextState = WAITING;
    }
    
    state = nextState;
}
