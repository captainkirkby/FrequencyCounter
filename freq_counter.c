#include <stdlib.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include "lcd.h"
#include <avr/interrupt.h>

#define AVG_AMT                 50
#define STR_LEN                 33
#define HIGH                    1
#define LOW                     0

#define COUNTER_MIN_VALUE       1000
#define CALIBRATION_CONSTANT    49950000

// counter = 8340 (freq = 119.90)
// freqInt = 119
// freqFrac = 7540

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
    uint32_t soFar[AVG_AMT];
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
        // soFarNdx goes from 0 to 19 then back to 0.
        soFar[soFarNdx] = counter;
        soFarNdx = (soFarNdx + 1) % AVG_AMT;

        if (soFarNdx == AVG_AMT - 1) {

            avg = 0;
            // get average of soFar
            for (avgNdx = 0; avgNdx < AVG_AMT; avgNdx++) {
                avg += (soFar[avgNdx]);
            }
            // avg /= AVG_AMT;

            // avg is AVG_AMT x the actual value
    
            freqInt = CALIBRATION_CONSTANT / avg;
            freqFrac = ((CALIBRATION_CONSTANT % avg) * 1000) / avg;
    
            // Write to LCD
            lcd_clrscr();
            sprintf(intCountStr, "%lu.", freqInt);
            lcd_puts(intCountStr);
            sprintf(fraccountStr, "%03lu Hz\n", freqFrac);
            lcd_puts(fraccountStr);
            sprintf(fraccountStr, "%lu\n", counter);
            lcd_puts(fraccountStr);
            sprintf(fraccountStr, "%lu\n", avg);
            lcd_puts(fraccountStr);
        }

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
