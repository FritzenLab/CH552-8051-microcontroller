#include "inc\ch554.h"
#include <stdint.h>


volatile unsigned int tick_10ms = 0;
volatile __bit ledON = 0;
unsigned int serialTime= 0;
unsigned int counter= 0;
unsigned int t;
static __bit wdt_started = 0;
static unsigned int blink_base = 0;

void timer0_ISR(void) __interrupt(1);
void blink_led(unsigned int t);
void clock_init(void);
void cmp_init(void);

void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    CLOCK_CFG |= bOSC_EN_INT; 
    // Set Fsys = 24 MHz (Fpll/4, bits[2:0] = 110 = 0x06)
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    
    SAFE_MOD = 0x00;
}

void timer0_ISR(void) __interrupt(1) __using(1){ 
    
    TF0 = 0;  // clear overflow flag (important for robustness)
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++; // this is the 10ms tick for LED blinking
    
}

void timer0_init(void) {
    // Force Timer0 to use Fsys/12
    T2MOD &= ~bTMR_CLK;   // disable fast clock mode
    T2MOD &= ~bT0_CLK;    // Timer0 = Fsys/12
    TMOD &= ~0x03;  // clear Timer0 mode bits
    TMOD |=  0x01;  // Timer0 mode 1: 16-bit
    // 10ms @ 24MHz: tick = 24M/12 = 2MHz = 0.5us
    // 10ms / 0.5us = 20000 ticks; 65536-20000 = 45536 = 0xB1E0
    TH0 = 0xB1;
    TL0 = 0xE0;

    TF0 = 0;

    ET0 = 1;   // enable Timer0 interrupt
    TR0 = 1;   // start Timer0
    EA = 1;
}
void cmp_init(void) {
    // Enable comparator power only (no ADC needed)
    ADC_CFG = bCMP_EN;

    // IN+ = AIN0 (P1.1): ADC_CHAN1=0, ADC_CHAN0=0
    // IN- = AIN1 (P1.4): CMP_CHAN=0
    // Both already 0 at reset, but be explicit:
    ADC_CTRL = 0x00;

    // P1.1 as high-impedance input (IN+)
    P1_MOD_OC &= ~(1 << 1);
    P1_DIR_PU &= ~(1 << 1);

    // P1.4 as high-impedance input (IN-, reference divider)
    P1_MOD_OC &= ~(1 << 4);
    P1_DIR_PU &= ~(1 << 4);
}
void blink_led(unsigned int t) {
    unsigned int phase = t - blink_base;

    if (phase < 15) {
        P3 |= (1 << 0);
    } else if (phase < 30) {
        P3 &= ~(1 << 0);
    } else {
        blink_base = t;         
    }
}

void main(void) {
    clock_init();    
    timer0_init();  
    cmp_init();

    // Configure P3.0 (LED) as push-pull output
    // P3.0 bit = 0x01
    P3_MOD_OC &= ~(1 << 0);   // push-pull
    P3_DIR_PU |=  (1 << 0);   // enable strong output drive
        
    P3 &= ~(1 << 0);  // Make LED pin P3.0 "start" as OFF
    
    while (1) {        
    
        EA = 0;
        t = tick_10ms;
        EA = 1;
        
        if (CMPO) {
            if (!ledON) {
                ledON = 1;
                blink_base = t;  // reset blink phase when comparator first triggers
            }
        } else {
            ledON = 0;
            P3 &= ~(1 << 0);  // make sure LED goes off immediately when pot drops below reference
        }

        if (ledON) {
            blink_led(t);   // called every loop iteration while CMPO is high
        }
    }
}