#include "inc\ch554.h"
#include <stdint.h>

volatile unsigned int tick_10ms = 0;
static unsigned int last_tick = 0;
static uint8_t pwm_value = 0;
static __bit going_up = 1;

void timer0_ISR(void) __interrupt(1);
void clock_init(void);
void pwm_init(void);

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    CLOCK_CFG |= bOSC_EN_INT;
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    SAFE_MOD = 0x00;
}

void timer0_ISR(void) __interrupt(1) __using(1) {
    TF0 = 0;
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++;
}

void timer0_init(void) {
    T2MOD &= ~bTMR_CLK;
    T2MOD &= ~bT0_CLK;
    TMOD &= ~0x03;
    TMOD |=  0x01;
    TH0 = 0xB1;
    TL0 = 0xE0;
    TF0 = 0;
    ET0 = 1;
    TR0 = 1;
    EA = 1;
}

void pwm_init(void) {
    
    // Explicitly select PWM1 on P1.5 (not P3.0)
    PIN_FUNC &= ~bPWM1_PIN_X;
    // Disable SPI0 so it doesn't override P1.5
    SPI0_CTRL &= ~bS0_MOSI_OE;  // make sure MOSI output is disabled

    // P1.5 push-pull output
    P1_MOD_OC &= ~(1 << 5);
    P1_DIR_PU  |=  (1 << 5);
    
    // PWM clock = Fsys/12 (PWM_CK_SE=0 means divide by 1 of the
    // already-divided clock, gives plenty of resolution)
    PWM_CK_SE = 0x00; // this gives 2MHz / 256 = 7812.5 Hz ≈ 7.8kHz (without any divider)
    //PWM_CK_SE = 0xFF; // this gives 2MHz / 256 = 7812.5 Hz ≈ 7.8kHz divided by 256 which gives us 30Hz

    // Start at zero brightness, default low polarity (active high)
    PWM_DATA1 = 0;
    //PWM_DATA1 = 128; // 50% duty cycle for testing
    // Enable PWM1 output, clear the bPWM_CLR_ALL bit
    PWM_CTRL = bPWM1_OUT_EN;
}

void main(void) {
    clock_init();
    timer0_init();
    pwm_init();

    while (1) {
        unsigned int t;
        EA = 0;
        t = tick_10ms;
        EA = 1;

        // Update brightness every 10ms tick
        if ((t - last_tick) >= 1) {
            last_tick = t;

            if (going_up) {
                if (pwm_value >= 252) {
                    pwm_value = 255;
                    going_up = 0;
                } else {
                    pwm_value += 1;
                }
            } else {
                if (pwm_value <= 3) {
                    pwm_value = 0;
                    going_up = 1;
                } else {
                    pwm_value -= 1;
                }
            }

            // this is the register that receives the 8-bit PWM value
            PWM_DATA1 = pwm_value; 
        }
    }
}