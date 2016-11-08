#include <stdlib.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include "lcd.h"
#include <avr/interrupt.h>

#define SO_FAR_BUF_LEN          20
#define STR_LEN                 33
#define HIGH                    1
#define LOW                     0

#define COUNTER_MIN_VALUE       1000
#define CALIBRATION_CONSTANT    1000000

int main(void)
{   
    DDRB &=~ (1 << PB2);
    PORTB |= (1 << PB2);

    /* initialize display, cursor off */
    lcd_init(LCD_DISP_ON);

    // 32 bit count can be incremented once per clock cycle and
    // not overflow for 2^32 / 16MHz = 268.435456 seconds
    // Seems like a safe value
    uint32_t counter;

    // Circular buffer to keep track of buffer length
    uint32_t soFar[SO_FAR_BUF_LEN];
    uint16_t soFarNdx = 0;
    uint32_t avg;
    uint16_t avgNdx = 0;

    // String to hold printing data
    char intCountStr[STR_LEN];
    char fraccountStr[STR_LEN];

    // Frequency variables
    uint32_t freqInt;
    uint32_t freqFrac;

    uint8_t lastState = PINB & _BV(PINB2);
    cli();

    for (;;) {
        // Prepare for capturing the falling edge
        counter = 0;

        // Count while the positive pulse is done with a minimum to avoid bounce
        while ((PINB & (1 << PINB2)) || (counter < COUNTER_MIN_VALUE)) {
            counter++;
        }

        // A change happened!
        soFar[++soFarNdx % SO_FAR_BUF_LEN] = counter;
        // get average of soFar
        for (avgNdx = 0; avgNdx < SO_FAR_BUF_LEN; avgNdx++) {
            avg += soFar[avgNdx];
        }
        avg /= SO_FAR_BUF_LEN;

        // counter = 8340 (freq = 119.90)
        // freqInt = 119
        // freqFrac = 7540

        freqInt = CALIBRATION_CONSTANT / counter;
        freqFrac = ((CALIBRATION_CONSTANT % counter) * (100)) / counter;

        // Write to LCD
        lcd_clrscr();
        sprintf(intCountStr, "%d.", freqInt);
        lcd_puts(intCountStr);
        sprintf(fraccountStr, "%02d Hz\n", freqFrac);
        lcd_puts(fraccountStr);

        // Wait again for the bounce to stop
        counter = 0;
        while (counter < COUNTER_MIN_VALUE) {
            counter++;
        }

        // Wait until the negative pulse is done
        while (!(PINB & (1 << PINB2)))
            ;
    }
}
