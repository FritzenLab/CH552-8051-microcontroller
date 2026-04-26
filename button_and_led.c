#include "inc\ch554.h"
#include <stdint.h>
#include <compiler.h> 

volatile unsigned int tick_100us = 0;
unsigned int button;
unsigned char led_state = 0;
__bit currentButton= 0;
unsigned int counter= 0;
// Debounce state
volatile unsigned int debounce_start = 0;
__bit raw= 0;
__bit raw_button_prev = 0;
__bit raw_button_prev_accepted = 0;  // tracks last accepted (debounced) state
// 20ms debounce threshold: 20ms / 100us = 200 ticks
#define DEBOUNCE_TICKS 200

void timer0_ISR(void) __interrupt(1) __using(1);
void blink_led(void);
void clock_init(void);

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}

void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;  // clear overflow flag (important for robustness)

    // This is for 10ms ticks
    /*TH0 = 0xB1;
    TL0 = 0xE0;*/

    // 100us @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 100us / 0.5us = 200 ticks; 65536-200 = 65336 = 0xFF38
    TH0 = 0xFF;
    TL0 = 0x38;

    if(tick_100us <= 5000){
        tick_100us++;
    }else{
        tick_100us= 0;
    }
        
}

void timer0_init(void) {
    TMOD &= ~0x03;  // clear Timer0 mode bits
    TMOD |=  0x01;  // Timer0 mode 1: 16-bit

    /*// 10ms @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 10ms / 0.5us = 20000 ticks; 65536-20000 = 45536 = 0xB1E0
    TH0 = 0xB1;
    TL0 = 0xE0;*/

    // 100us @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 100us / 0.5us = 200 ticks; 65536-200 = 65336 = 0xFF38
    TH0 = 0xFF;
    TL0 = 0x38;

    ET0 = 1;   // enable Timer0 interrupt
    TR0 = 1;   // start Timer0
    EA = 1;
}

void blink_led(void) {
    if(tick_100us % 5000 < 2500){
        P3 |= (1 << 0);  // LED ON
    } else {
        P3 &= ~(1 << 0); // LED OFF
    }
}

void main(void) {
    clock_init();
    timer0_init();

    // Disable watchdog (important on CH55x)
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;   // turn off watchdog
    SAFE_MOD = 0x00;

    // Configure P3.0 as push-pull output
    // P3.0 bit = 0x01
    P3_MOD_OC &= ~0x01;   // not open-drain
    P3_DIR_PU |= 0x01;    // output, with pull-up

    // Configure P1.4 as input WITH internal pull-up (CH554 requires BOTH bits = 1)
    P1_MOD_OC |=  (1 << 4);   // open-drain mode → required for pull-up
    P1_DIR_PU  |=  (1 << 4);  // pull-up enabled
    //P1 |= (1 << 4);           // write 1 → enables internal pull-up

    Serial_begin();

    while (1) {
        raw = !(P1 & (1 << 4)); // read raw pin, pressed = 1

        if (raw != raw_button_prev) {
            // pin changed — restart the debounce timer
            debounce_start = tick_100us;
            raw_button_prev = raw;
        } else if ((tick_100us - debounce_start) >= DEBOUNCE_TICKS) {
            // pin has been stable for 20ms — accept it
            if (raw == 1 && raw_button_prev_accepted == 0) {
                // rising edge only: toggle blink state on each press
                currentButton = !currentButton;
                raw_button_prev_accepted = 1;
            } else if (raw == 0) {
                // button released — arm for next press
                raw_button_prev_accepted = 0;
            }
        }

        if (currentButton) blink_led();
        else P3 &= ~0x01; // LED OFF
    }
}
