/*
This example works only for a 0.49" OLED display which has a resolution of
64x32, is controlled by the SSD1306 controller and is found on the 0x78  
(0x3C << 1) address. 

I read a potentiometer connected to pin P1.4, analog IN AIN1 then
show the converted value (0-5000 mV instead of 0-255 integers) 
on the OLED display every one second.
*/
#include "inc\ch554.h"
#include "adc\adc.h"
#include <stdint.h>
#include "serial_print\serial.h"

// ================== GLOBALS ==================
volatile unsigned int tick_10ms = 0;
volatile unsigned int serialTime = 0;

uint8_t rawAnalog = 0;
uint16_t finalAnalog = 0;

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

void oled_draw_char(char c) {
    if (c < '0' || c > '9') return;

    uint8_t index = c - '0';

    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);

    for (uint8_t i = 0; i < 5; i++) {
        i2c_write_byte(font5x7[index][i]);
    }

    i2c_write_byte(0x00); // spacing

    i2c_stop();
}
uint8_t get_text_width(uint16_t value) {
    uint8_t digits = 0;

    if (value == 0) return 6;

    while (value > 0) {
        digits++;
        value /= 10;
    }

    return (digits * 6) + (1 + 6 + 6);  
    // space + 'm' + 'V'
}
void oled_print_uint(uint16_t value) {
    uint8_t buffer[64];   // enough for digits
    uint8_t idx = 0;

    // --- convert number to string ---
    char buf[6];
    uint8_t i = 0;

    if (value == 0) {
        buf[i++] = '0';
    } else {
        uint16_t temp = value;
        char rev[6];
        uint8_t j = 0;

        while (temp > 0) {
            rev[j++] = (temp % 10) + '0';
            temp /= 10;
        }
        while (j > 0) buf[i++] = rev[--j];
    }
    buf[i] = '\0';

    for (uint8_t k = 0; k < i; k++) {
        uint8_t index = buf[k] - '0';

        for (uint8_t col = 0; col < 5; col++) {
            buffer[idx++] = font5x7[index][col];
        }

        buffer[idx++] = 0x00; // spacing
    }

        // --- add space before unit ---
        //buffer[idx++] = 0x00;
        for (uint8_t i = 0; i < 6; i++) buffer[idx++] = 0x00;

        // --- add 'm' ---
        for (uint8_t col = 0; col < 5; col++) {
            buffer[idx++] = font_m[col];
        }
        buffer[idx++] = 0x00;

        // --- add 'V' ---
        for (uint8_t col = 0; col < 5; col++) {
            buffer[idx++] = font_V[col];
        }
        buffer[idx++] = 0x00;

    // --- send in ONE burst ---
    i2c_start();
    i2c_write_byte(OLED_ADDR);
    i2c_write_byte(0x40);

    for (uint8_t n = 0; n < idx; n++) {
        i2c_write_byte(buffer[n]);
    }

    i2c_stop();
}
// ================== TIMER ==================
void timer0_ISR(void) __interrupt(INT_NO_TMR0) {
    TF0 = 0;
    TH0 = 0xB1;
    TL0 = 0xE0;
    tick_10ms++;
    serialTime++;
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

    while (tick_10ms < 15); // 150ms power-on delay for i2c display
    oled_init();
    

    while (1) {

        if(serialTime > 100) {   // every ~1 second
            serialTime = 0;

            // Replace the oled section inside if(serialTime > 100):
            rawAnalog = analogReading();
            finalAnalog = rawToMillivolts(rawAnalog);
            Serial_println_uint(finalAnalog);

            // Clear ALL 4 pages (64x32 display)
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

            uint8_t text_width = get_text_width(finalAnalog);
            uint8_t x = (64 - text_width) / 2;   // center horizontally
            uint8_t page = 1;                   // center vertically

            /*
            This is how pages work on my 0.49" OLED with SSD1306
            Top of screen
            ┌───────────────┐
            │ Page 0 (Y 0–7)│
            ├───────────────┤
            │ Page 1 (Y 8–15)│
            ├───────────────┤
            │ Page 2 (Y 16–23)│
            ├───────────────┤
            │ Page 3 (Y 24–31)│
            └───────────────┘
            Bottom of screen
            */
            oled_set_cursor(x, page);
            oled_print_uint(finalAnalog);
                        
        }
    }
}