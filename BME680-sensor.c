#include "inc\ch554.h"
#include <stdint.h>
#include "serial_print\serial.h"
#include "bme680\BME680.h"

// ─── Globals ──────────────────────────────────────────────────────────────────
volatile unsigned int tick_10ms = 0;
static unsigned int   serialTime = 0;

// ─── Timer0 ISR ──────────────────────────────────────────────────────────────
void timer0_ISR(void) __interrupt(INT_NO_TMR0) __using(1) {
    TF0 = 0;
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++;
    serialTime++;
}

// ─── Clock init ───────────────────────────────────────────────────────────────
void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;   // Fsys = 24MHz
    SAFE_MOD = 0x00;
}

// ─── Timer0 init ─────────────────────────────────────────────────────────────
void timer0_init(void) {
    TMOD &= ~0x03;
    TMOD |=  0x01;   // mode 1, 16-bit
    TH0 = 0xB1;
    TL0 = 0xE0;      // 10ms @ 24MHz / 12
    TF0 = 0;
    ET0 = 1;
    TR0 = 1;
    EA  = 1;
}

// ─── Small helper: print int32 with sign and two implied decimal places ───────
// e.g. 2345 → "23.45", -500 → "-5.00"
static void print_fixed2(int32_t val) {
    if (val < 0) {
        Serial_print("-");
        val = -val;
    }
    Serial_print_uint((uint16_t)(val / 100));
    Serial_print(".");
    uint8_t frac = (uint8_t)(val % 100);
    if (frac < 10) Serial_print("0");
    Serial_print_uint(frac);
}

// Print uint32 with three implied decimal places
// e.g. 101325 → "1013.25" (for Pa → hPa with 2 decimals)
static void print_pa_hpa(uint32_t pa) {
    // Convert Pa to hPa*100 for two decimal places
    uint32_t hpa100 = pa / 10;   // hPa * 10 (one decimal)
    Serial_print_uint((uint16_t)(hpa100 / 10));
    Serial_print(".");
    Serial_print_uint((uint8_t)(hpa100 % 10));
}

// Print humidity: val is %RH * 1000, print with one decimal
static void print_humidity(uint32_t val) {
    Serial_print_uint((uint16_t)(val / 1000));
    Serial_print(".");
    Serial_print_uint((uint8_t)((val % 1000) / 100));
}

// ─── Main ─────────────────────────────────────────────────────────────────────
void main(void) {
    // Configure P1.6 (MISO/SDO) as floating input immediately
    // so it doesn't fight the 10k pull-down on SDO at power-on
    P1_MOD_OC &= ~(1 << 6);   // not open-drain
    P1_DIR_PU  &= ~(1 << 6);  // input, no pull-up (float)
    //P1        &= ~(1 << 6);   // ensure output latch is low
    
    // Drive CS LOW immediately to force SPI mode at sensor power-on latch
    P1_MOD_OC &= ~(1 << 4);   // push-pull output
    P1_DIR_PU |=  (1 << 4);   // output enable
    P1 &= ~(1 << 4);          // CS LOW — forces BME680 into SPI mode
    
    BME680_Data data;
    unsigned int t;
    uint8_t bme_ok;

    clock_init();
    timer0_init();

    

    // Wait for BME680 to fully power up through its onboard 5V→3.3V regulator
    // BME680 needs ~2ms after VDD stable, regulator needs ~200us, add margin
    {
        volatile uint32_t i;
        for (i = 0; i < 200000UL; i++) { __asm nop __endasm; }
    }

    // Now to the code
    
    // Disable watchdog
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;
    SAFE_MOD = 0x00;

    Serial_begin();

    Serial_println("BME680 + CH552 starting...");

    bme_ok = BME680_init();

    if (!bme_ok) {
        Serial_println("BME680 init FAILED - check wiring!");
        // Blink LED on P3.0 fast to signal error
        P3_MOD_OC &= ~(1 << 0);
        P3_DIR_PU  |=  (1 << 0);
        while (1) {
            EA = 0; t = tick_10ms; EA = 1;
            if (t % 10 < 5) P3 |=  (1 << 0);
            else             P3 &= ~(1 << 0);
        }
    }

    Serial_println("BME680 OK");
    Serial_println("----------------------------");

    while (1) {
        EA = 0; t = tick_10ms; EA = 1;

        // Drive the BME680 state machine every loop iteration
        if (BME680_update(t, &data)) {
            // Fresh data ready — print every time we get a reading
            Serial_print("Temp: ");
            print_fixed2(data.temperature);
            Serial_print(" C  |  Pres: ");
            print_pa_hpa(data.pressure);
            Serial_print(" hPa  |  Hum: ");
            print_humidity(data.humidity);
            Serial_println(" %");
        }
    }
}
