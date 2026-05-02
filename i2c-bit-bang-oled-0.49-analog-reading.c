#include "inc\ch554.h"
#include "adc\adc.h"
#include <stdint.h>
#include "serial_print\serial.h"

// ================== GLOBALS ==================
volatile unsigned int tick_10ms = 0;
unsigned int serialTime = 0;

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
    for (volatile uint8_t i = 0; i < 40; i++);
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

void i2c_write_byte(uint8_t data) {
    for (uint8_t i = 0; i < 8; i++) {

        if (data & 0x80)
            SDA_RELEASE();   // HIGH = release
        else
            SDA_LOW();       // LOW = drive

        SCL_RELEASE();
        i2c_delay();
        SCL_LOW();
        i2c_delay();

        data <<= 1;
    }

    // ACK cycle
    SDA_RELEASE();      // release SDA so slave can pull it LOW
    SCL_RELEASE();
    i2c_delay();
    SCL_LOW();
}

// ================== OLED (SSD1306) ==================
#define OLED_ADDR 0x78  // 0x3C << 1
//#define OLED_ADDR 0x7A

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
    oled_cmd(0xB0 + page);
    oled_cmd(0x00 + (x & 0x0F));
    oled_cmd(0x10 + (x >> 4));
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
    for (uint8_t page = 0; page < 8; page++) {

        oled_cmd(0xB0 + page);
        oled_cmd(0x00);
        oled_cmd(0x10);

        i2c_start();
        i2c_write_byte(OLED_ADDR);
        i2c_write_byte(0x40);   // data stream

        for (uint8_t i = 0; i < 128; i++) {
            i2c_write_byte(0x00);
        }

        i2c_stop();
    }
}

void oled_init(void) {
    oled_cmd(0xAE);
    oled_cmd(0x20); oled_cmd(0x00);
    oled_cmd(0xB0);
    oled_cmd(0xC8);
    oled_cmd(0x00);
    oled_cmd(0x10);
    oled_cmd(0x40);
    oled_cmd(0x81); oled_cmd(0x7F);
    oled_cmd(0xA1);
    oled_cmd(0xA6);
    oled_cmd(0xA8); oled_cmd(0x3F);
    oled_cmd(0xA4);
    oled_cmd(0xD3); oled_cmd(0x00);
    oled_cmd(0xD5); oled_cmd(0xF0);
    oled_cmd(0xD9); oled_cmd(0x22);
    oled_cmd(0xDA); oled_cmd(0x12);
    oled_cmd(0xDB); oled_cmd(0x20);
    oled_cmd(0x8D); oled_cmd(0x14);
    oled_cmd(0xAF);

    oled_clear();
}

// ===== SIMPLE 5x7 FONT (digits only) =====
const uint8_t font5x7[][5] = {
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

void oled_print_uint(uint16_t value) {
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
        oled_draw_char(buf[k]);
    }
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
    while (ADC_START);
    ADC_IF = 0;
    return ADC_DATA;
}

uint16_t rawToMillivolts(uint8_t raw) {
    if (raw < 46) return 0;
    return 300 + ((uint32_t)(raw - 46) * 3000) / 117;
}

// ================== MAIN ==================
void main(void) {
    clock_init();
    timer0_init();

    // Disable watchdog
    SAFE_MOD = 0x55;
    SAFE_MOD = 0xAA;
    GLOBAL_CFG &= ~bWDOG_EN;
    SAFE_MOD = 0x00;

    // I2C pins config (open-drain)
    P1_MOD_OC |= (1 << SDA_PIN) | (1 << SCL_PIN);
    P1_DIR_PU |= (1 << SDA_PIN) | (1 << SCL_PIN);

    SDA_RELEASE();
    SCL_RELEASE();

    // ADC config
    ADCInit(0);
    ADC_ChannelSelect(2);

    Serial_begin();

    oled_init();
    oled_set_cursor(0, 0);

    for (uint8_t i = 0; i < 128; i++) {
        oled_data(0xFF);
    }
    while (1) {

        if(serialTime > 100) {   // every ~1 second
            serialTime = 0;

            rawAnalog = analogReading();
            finalAnalog = rawToMillivolts(rawAnalog);

            Serial_println_uint(finalAnalog);

            oled_set_cursor(0, 0);
            oled_print_uint(finalAnalog);
        }
    }
}