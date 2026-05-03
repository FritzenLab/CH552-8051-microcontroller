/*
This example works only for a 0.49" OLED display which has a resolution of
64x32, is controlled by the SSD1306 controller and is found on the 0x78  
(0x3C << 1) address. 

I read an NTC + resistor divider connected to pin P1.4, analog IN AIN1 then
calculate a Celsius temperature based on a pre-computed NTC curve. Finally I
show such temperature on the OLED display every one second.
P.S: there is an LED blinking at 2Hz on pin P3.5
*/
#include "inc\ch554.h"
#include "adc\adc.h"
#include <stdint.h>
#include "serial_print\serial.h"
#include "ntc\dados-ntc.h" // contains the pre-computed points of the NTC curve
// ================== GLOBALS ==================
volatile unsigned int tick_10ms = 0;
volatile unsigned int serialTime = 0;

uint8_t rawAnalog = 0;
uint16_t finalAnalog = 0;
// EMA state — initialized to 0, will settle after a few readings
uint16_t ema_raw = 0;
uint8_t  ema_initialized = 0; // first reading skips blending
#define EMA_N 30  // change this single number to tune smoothing of analog reading

// ================== I2C (BIT-BANG) ==================
#define SDA_PIN 0   // P1.0
#define SCL_PIN 1   // P1.1

#define SDA_RELEASE() (P1 |=  (1 << SDA_PIN))   // let pull-up drive HIGH
#define SDA_LOW()     (P1 &= ~(1 << SDA_PIN))  // drive LOW

#define SCL_RELEASE() (P1 |=  (1 << SCL_PIN))
#define SCL_LOW()     (P1 &= ~(1 << SCL_PIN))

void i2c_delay(void) {
    __asm nop __endasm;
    __asm nop __endasm;
}

void i2c_start(void) {
    SDA_RELEASE();
    SCL_RELEASE();
    i2c_delay();

    SDA_LOW();
    i2c_delay();
    SCL_LOW();
}

void i2c_stop(void) {
    SDA_LOW();
    SCL_RELEASE();
    i2c_delay();

    SDA_RELEASE();
    i2c_delay();
}

// Returns 0 if ACK received (slave pulled SDA low), 1 if NACK
// https://www.nxp.com/docs/en/user-guide/UM10204.pdf - Section 3.1.6
uint8_t i2c_write_byte(uint8_t data) {
    for (uint8_t i = 0; i < 8; i++) {
        if (data & 0x80)
            SDA_RELEASE();
        else
            SDA_LOW();

        SCL_RELEASE();
        i2c_delay();
        SCL_LOW();
        i2c_delay();
        data <<= 1;
    }

    // ACK cycle — read what slave drives on SDA
    SDA_RELEASE();
    SCL_RELEASE();
    i2c_delay();
    // P1 bit 0 = SDA; 0 means slave pulled it LOW = ACK
    uint8_t ack = (P1 & (1 << SDA_PIN)) ? 1 : 0;
    SCL_LOW();
    return ack; // 0 = ACK, 1 = NACK
}

// ================== OLED (SSD1306) ==================
#define OLED_ADDR 0x78  // 0x3C << 1

void oled_cmd(uint8_t cmd) {
    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x00);
    i2c_write_byte(cmd);
    i2c_stop();
}

void oled_data(uint8_t data) {
    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);
    i2c_write_byte(data);
    i2c_stop();
}

void oled_set_cursor(uint8_t x, uint8_t page) {
    // 64x32 panel columns start at physical column 32
    uint8_t col = x + 32;
    oled_cmd(0xB0 + page);
    oled_cmd(0x00 | (col & 0x0F));   // low nibble
    oled_cmd(0x10 | (col >> 4));     // high nibble
}
void oled_write_data_stream(uint8_t *data, uint8_t len) {
    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);

    for (uint8_t i = 0; i < len; i++) {
        i2c_write_byte(data[i]);
    }

    i2c_stop();
}
void oled_clear(void) {
    // 64x32 panel: 4 pages (32px / 8px per page), columns 32-95
    for (uint8_t page = 0; page < 4; page++) {
        oled_cmd(0xB0 + page);
        oled_cmd(0x00);  // col low  = 0x00 → actual col = 32 after remap
        oled_cmd(0x12);  // col high = 0x10 | 0x02 = col 32
        i2c_start();
        i2c_write_byte(OLED_ADDR);
        i2c_write_byte(0x40);
        for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
        i2c_stop();
    }
}

void oled_init(void) {
    oled_cmd(0xAE);           // display off
    oled_cmd(0xD5); oled_cmd(0x80); // clock divide ratio / osc freq
    oled_cmd(0xA8); oled_cmd(0x1F); // multiplex ratio = 31 (32 rows)
    oled_cmd(0xD3); oled_cmd(0x00); // display offset = 0
    oled_cmd(0x40);                 // display start line = 0
    oled_cmd(0x8D); oled_cmd(0x14); // charge pump enable
    oled_cmd(0x20); oled_cmd(0x02); // page addressing mode. In this case, by page (vertically)
    oled_cmd(0xA1);                 // segment remap (col 127 = SEG0)
    oled_cmd(0xC8);                 // COM scan remapped
    oled_cmd(0xDA); oled_cmd(0x12); // COM pins: alt config, no remap
    oled_cmd(0x81); oled_cmd(0xCF); // contrast
    oled_cmd(0xD9); oled_cmd(0x22); // pre-charge period
    oled_cmd(0xDB); oled_cmd(0x00); // VCOMH deselect = 0
    oled_cmd(0xA4);                 // output follows RAM
    oled_cmd(0xA6);                 // normal display
    oled_cmd(0xAF);                 // display on

    oled_clear();
}
// ===== SIMPLE 5x7 FONT (digits only) =====
__code const uint8_t font5x7[][5] = {
    {0x3E,0x51,0x49,0x45,0x3E}, // 0
    {0x00,0x42,0x7F,0x40,0x00}, // 1
    {0x62,0x51,0x49,0x49,0x46}, // 2
    {0x22,0x49,0x49,0x49,0x36}, // 3
    {0x18,0x14,0x12,0x7F,0x10}, // 4
    {0x2F,0x49,0x49,0x49,0x31}, // 5
    {0x3E,0x49,0x49,0x49,0x32}, // 6
    {0x01,0x71,0x09,0x05,0x03}, // 7
    {0x36,0x49,0x49,0x49,0x36}, // 8
    {0x26,0x49,0x49,0x49,0x3E}  // 9
};
// 5x7 font for 'm' and 'V'
__code const uint8_t font_m[5] = {0x7C, 0x04, 0x18, 0x04, 0x78}; // m
__code const uint8_t font_V[5] = {0x1F, 0x20, 0x40, 0x20, 0x1F}; // V
// '-' glyph: horizontal line in the middle
__code const uint8_t font_minus[5] = {0x08, 0x08, 0x08, 0x08, 0x08};
// '.' glyph: single dot at bottom
__code const uint8_t font_dot[2]   = {0x40, 0x00}; // 1px wide + spacing


void oled_draw_char(char c) {
    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);

    if (c >= '0' && c <= '9') {
        uint8_t index = c - '0';
        for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font5x7[index][i]);
        i2c_write_byte(0x00); // spacing

    } else if (c == '-') {
        for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_minus[i]);
        i2c_write_byte(0x00); // spacing

    } else if (c == '.') {
        i2c_write_byte(font_dot[0]);
        i2c_write_byte(font_dot[1]); // spacing already included

    }
    i2c_stop();
}
// Returns pixel width of a uint16_t number (digits only, no units)
uint8_t get_text_width(uint16_t value) {
    uint8_t digits = 0;
    if (value == 0) return 6; // '0' = 5px + 1 space
    while (value > 0) {
        digits++;
        value /= 10;
    }
    return digits * 6; // each digit: 5px + 1 space
}
// Prints digits only — no units appended
void oled_print_uint(uint16_t value) {
    uint8_t buffer[36];
    uint8_t idx = 0;

    char buf[6];
    uint8_t i = 0;

    if (value == 0) {
        buf[i++] = '0';
    } else {
        uint16_t temp = value;
        char rev[6];
        uint8_t j = 0;
        while (temp > 0) { rev[j++] = (temp % 10) + '0'; temp /= 10; }
        while (j > 0) buf[i++] = rev[--j];
    }

    for (uint8_t k = 0; k < i; k++) {
        uint8_t index = buf[k] - '0';
        for (uint8_t col = 0; col < 5; col++) buffer[idx++] = font5x7[index][col];
        buffer[idx++] = 0x00;
    }

    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);
    for (uint8_t n = 0; n < idx; n++) i2c_write_byte(buffer[n]);
    i2c_stop();
}

// Prints value followed by " mV" — only used for millivolt display
void oled_print_millivolts(uint16_t value) {
    oled_print_uint(value);  // digits

    // space before unit
    uint8_t spacer[6] = {0,0,0,0,0,0};
    i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
    for (uint8_t i = 0; i < 6; i++) i2c_write_byte(spacer[i]);
    i2c_stop();

    // 'm'
    i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
    for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_m[i]);
    i2c_write_byte(0x00);
    i2c_stop();

    // 'V'
    i2c_start(); i2c_write_byte(OLED_ADDR); i2c_write_byte(0x40);
    for (uint8_t i = 0; i < 5; i++) i2c_write_byte(font_V[i]);
    i2c_write_byte(0x00);
    i2c_stop();
}

int8_t readTemperatureX2(void) {
    uint8_t raw = analogReading();

    if (!ema_initialized) {
        ema_raw = (uint16_t)raw * EMA_N; // seed pre-scaled by N
        ema_initialized = 1;
    } else {
        ema_raw = ema_raw - (ema_raw / EMA_N) + raw; // arbitrary N, uses division
    }

    uint8_t smoothed = (uint8_t)(ema_raw / EMA_N); // scale back down

    for (uint8_t i = 0; i < NTC_ENTRIES - 1; i++) {
        if (smoothed >= ntc_adc_table[i + 1]) {
            return (int8_t)(NTC_T_START_X2 + (int8_t)i);
        }
    }
    return (int8_t)(NTC_T_START_X2 + NTC_ENTRIES - 1);
}
// ================== TIMER ==================
void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;
    TH0 = 0xB1;
    TL0 = 0xE0;
    
    serialTime++;
    tick_10ms++;
   
}

void timer0_init(void) {
    TMOD &= ~0x03;
    TMOD |=  0x01;

    TH0 = 0xB1;
    TL0 = 0xE0;

    ET0 = 1;
    TR0 = 1;
    EA = 1;
}

// ================== CLOCK ==================
void clock_init(void) {
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    CLOCK_CFG = (CLOCK_CFG & ~MASK_SYS_CK_SEL) | 0x06;
    SAFE_MOD = 0x00;
}

// ================== ADC ==================
uint8_t analogReading(void) {
    ADC_START = 1;
    while (ADC_START);   // throw away first sample

    ADC_START = 1;
    while (ADC_START);

    ADC_IF = 0;
    return ADC_DATA;
}

uint16_t rawToMillivolts(uint8_t raw) {
    //if (raw < 46) return 0;
    return ((uint32_t)raw * 5000) / 255;
}
void blink_led(void) {
    if ((tick_10ms % 50) < 25) {
        P3 |= (1 << 5);
    } else {
        P3 &= ~(1 << 5);
    }
}
// ================== MAIN ==================
void main(void) {
    // Disable watchdog
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;
    SAFE_MOD = 0x00;
    clock_init();       // clock MUST be first — everything depends on Fsys=24MHz
    timer0_init();      // timer second — needed for the tick_10ms delay below

    
    Serial_begin();         // after clock, so baud rate is correct
    ADCInit(2);
    ADC_ChannelSelect(1); // Option 1, P1.4 as analog input -> else if(ch == 1){ADC_CHAN1 =0;ADC_CHAN0=1;P1_DIR_PU &= ~bAIN1;}            //AIN1
    for (volatile uint16_t m = 0; m < 1000; m++); // settle

    // Float P1.4 (AIN1) — disable output driver and pull-up for clean ADC reading
    // ch554.h: P1_MOD_OC and P1_DIR_PU control pin mode
    P1_MOD_OC &= ~(1 << 4);  // not open-drain
    P1_DIR_PU  &= ~(1 << 4); // disable pull-up, set as input

    // I2C pins after ADC so ADC init can't clobber P1 config
    P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);  // open-drain
    P1_DIR_PU  &= ~((1 << SDA_PIN) | (1 << SCL_PIN)); // disable internal pull-up
    SDA_RELEASE();
    SCL_RELEASE();

    // LED for blinking
    P3_MOD_OC &= ~(1 << 5);  // not open-drain (push-pull)
    P3_DIR_PU  |=  (1 << 5); // output

    while (tick_10ms < 15); // 150ms power-on delay for i2c display
    oled_init();
    
    while (1) {

        // just blink an LED on pin P3.5
        blink_led();

        // every 100 ms (10 ms * 100) do everything: read analog input,
        // update OLED display and send temperature via UART connection
        if(serialTime > 100) {
            serialTime = 0;

            int8_t tempX2 = readTemperatureX2();
            int8_t whole  = tempX2 / 2;
            uint8_t half  = (tempX2 % 2) ? 5 : 0; // 0 or 5 (for .0 or .5)

            // Serial: print "whole.half" e.g. "-5.5" or "23.0"
            if (whole < 0) {
                Serial_print("-");
                Serial_print_uint((uint16_t)(-whole));
            } else {
                Serial_print_uint((uint16_t)whole);
            }
            Serial_print(".");
            Serial_println_uint((uint16_t)half);  // println only on the last piece

            // Clear ALL 4 pages
            for (uint8_t page = 0; page < 4; page++) {
                oled_cmd(0xB0 + page);
                oled_cmd(0x00 | (32 & 0x0F));
                oled_cmd(0x10 | (32 >> 4));
                i2c_start();
                i2c_write_byte(OLED_ADDR);
                i2c_write_byte(0x40);
                for (uint8_t i = 0; i < 64; i++) i2c_write_byte(0x00);
                i2c_stop();
            }

            // Total text width: whole digits + dot (2px) + 1 half digit
            // get_text_width works on uint16_t, half is always 1 digit (0 or 5)
            uint8_t w_whole = get_text_width((uint16_t)(whole < 0 ? -whole : whole));
            uint8_t w_sign  = (whole < 0) ? 6 : 0; // '-' glyph: 5px + 1 space
            uint8_t w_dot   = 2;                    // dot pixel + 1 space
            uint8_t w_half  = get_text_width((uint16_t)half);
            uint8_t text_width = w_sign + w_whole + w_dot + w_half;

            uint8_t x    = (64 - text_width) / 2;
            uint8_t pg   = 1;  // vertically centered (page 1 of 0-3)

            // Draw sign if negative
            if (whole < 0) {
                oled_set_cursor(x, pg);
                oled_draw_char('-');  // you'll need to add '-' support (see below)
                x += w_sign;
                whole = -whole;
            }

            oled_set_cursor(x, pg);
            oled_print_uint((uint16_t)whole);
            x += w_whole;

            oled_set_cursor(x, pg);
            oled_draw_char('.');    // you'll need to add '.' support (see below)
            x += w_dot;

            oled_set_cursor(x, pg);
            oled_print_uint((uint16_t)half);
        }
    }

    
}