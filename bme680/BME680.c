#include "inc\ch554.h"
#include <stdint.h>
#include "BME680.h"
#include "../serial_print/serial.h"

// ─── SPI pin definitions ──────────────────────────────────────────────────────
// Hardware SPI0: MOSI=P1.5, MISO=P1.6, SCK=P1.7
// CS: hardwired to GND on breadboard — no CS toggling needed
// SDO: 10k pull-down to GND to force SPI mode at power-on

// ─── Module-private variables ─────────────────────────────────────────────────
static BME680_Calib  _calib;
static BME680_State  _state      = BME680_STATE_IDLE;
static unsigned int  _wait_start = 0;

static int32_t _t_fine = 0;

// ─── Low-level SPI ───────────────────────────────────────────────────────────

void spi_init(void) {
    // MOSI, SCK as push-pull output
    P1_MOD_OC &= ~((1 << 5) | (1 << 7));
    P1_DIR_PU  |=  (1 << 5) | (1 << 7);

    // MISO as floating input (0 0 = float, no pull-up)
    P1_MOD_OC &= ~(1 << 6);
    P1_DIR_PU  &= ~(1 << 6);

    // Clear FIFO
    SPI0_CTRL = bS0_CLR_ALL;
    {
        volatile uint32_t i;
        for (i = 0; i < 100UL; i++) { __asm nop __endasm; }
    }

    // MOSI and SCK outputs enabled, master mode (bS0_MODE_SLV=0 by default)
    SPI0_CTRL = bS0_MOSI_OE | bS0_SCK_OE;
    // Make sure we start in OUT mode (for sending the register address)
    SPI0_CTRL &= ~bS0_DATA_DIR;

    // Mode 0, MSB first
    SPI0_SETUP = 0x00;
    //SPI0_SETUP = bS0_MST_CLK;   // Mode 3 (CPOL=1, CPHA=1)

    // Slow clock for stability
    SPI0_CK_SE = 0x20;
}

// ─── SPI byte primitives ──────────────────────────────────────────────────────

// Write one byte — direction OUT, MISO ignored
static void spi_write_byte(uint8_t tx) {
    SPI0_CTRL &= ~bS0_DATA_DIR;   // direction = OUT
    SPI0_DATA = tx;
    while (!S0_IF_BYTE);
    S0_IF_BYTE = 1;
}

// Read one byte — direction IN, send dummy 0xFF to clock data in
static uint8_t spi_read_byte(void) {
    SPI0_CTRL |= bS0_DATA_DIR;    // direction = IN
    SPI0_DATA = 0xFF;
    while (!S0_IF_BYTE);
    S0_IF_BYTE = 1;
    return SPI0_DATA;
}

// ─── Register read / write ────────────────────────────────────────────────────
// BME680 SPI protocol: read = bit7 cleared (0), write = bit7 set (1)
// CS is permanently LOW (hardwired to GND), no toggling needed

uint8_t reg_read(uint8_t reg) {
    spi_write_byte(reg & 0x7F);   // READ: bit7 = 0
    spi_read_byte();              // dummy to align timing
    return spi_read_byte();       // actual data
}

void reg_write(uint8_t reg, uint8_t val) {
    spi_write_byte(reg | 0x80);   // WRITE: bit7 = 1
    spi_write_byte(val);
}

static void reg_read_burst(uint8_t reg, uint8_t *buf, uint8_t len) {
    uint8_t i;
    spi_write_byte(reg & 0x7F);   // READ: bit7 = 0
    spi_read_byte();              // dummy
    for (i = 0; i < len; i++) {
        buf[i] = spi_read_byte();
    }
}

// ─── Calibration loading ──────────────────────────────────────────────────────

static void load_calibration(void) {
    uint8_t buf[2];

    // Temperature
    buf[0] = reg_read(BME680_REG_CALIB_T1_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_T1_MSB);
    _calib.T1 = (uint16_t)((buf[1] << 8) | buf[0]);

    buf[0] = reg_read(BME680_REG_CALIB_T2_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_T2_MSB);
    _calib.T2 = (int16_t)((buf[1] << 8) | buf[0]);

    _calib.T3 = (int8_t)reg_read(BME680_REG_CALIB_T3);

    // Pressure
    buf[0] = reg_read(BME680_REG_CALIB_P1_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P1_MSB);
    _calib.P1 = (uint16_t)((buf[1] << 8) | buf[0]);

    buf[0] = reg_read(BME680_REG_CALIB_P2_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P2_MSB);
    _calib.P2 = (int16_t)((buf[1] << 8) | buf[0]);

    _calib.P3  = (int8_t)reg_read(BME680_REG_CALIB_P3);

    buf[0] = reg_read(BME680_REG_CALIB_P4_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P4_MSB);
    _calib.P4 = (int16_t)((buf[1] << 8) | buf[0]);

    buf[0] = reg_read(BME680_REG_CALIB_P5_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P5_MSB);
    _calib.P5 = (int16_t)((buf[1] << 8) | buf[0]);

    _calib.P6  = (int8_t)reg_read(BME680_REG_CALIB_P6);
    _calib.P7  = (int8_t)reg_read(BME680_REG_CALIB_P7);

    buf[0] = reg_read(BME680_REG_CALIB_P8_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P8_MSB);
    _calib.P8 = (int16_t)((buf[1] << 8) | buf[0]);

    buf[0] = reg_read(BME680_REG_CALIB_P9_LSB);
    buf[1] = reg_read(BME680_REG_CALIB_P9_MSB);
    _calib.P9 = (int16_t)((buf[1] << 8) | buf[0]);

    _calib.P10 = reg_read(BME680_REG_CALIB_P10);

    // Humidity — H1 and H2 share register 0xE2
    uint8_t h1_lsb_h2_lsb = reg_read(BME680_REG_CALIB_H1_LSB);
    _calib.H1 = (uint16_t)((reg_read(BME680_REG_CALIB_H1_MSB) << 4) | (h1_lsb_h2_lsb & 0x0F));
    _calib.H2 = (uint16_t)((reg_read(BME680_REG_CALIB_H2_MSB) << 4) | (h1_lsb_h2_lsb >> 4));
    _calib.H3 = (int8_t)reg_read(BME680_REG_CALIB_H3);
    _calib.H4 = (int8_t)reg_read(BME680_REG_CALIB_H4);
    _calib.H5 = (int8_t)reg_read(BME680_REG_CALIB_H5);
    _calib.H6 = reg_read(BME680_REG_CALIB_H6);
    _calib.H7 = (int8_t)reg_read(BME680_REG_CALIB_H7);
}

// ─── Bosch compensation formulas (integer, from BME680 datasheet) ─────────────

static int32_t compensate_temperature(uint32_t adc_T) {
    int32_t var1, var2, var3, T;

    var1 = ((int32_t)adc_T >> 3) - ((int32_t)_calib.T1 << 1);
    var2 = (var1 * (int32_t)_calib.T2) >> 11;
    var3 = ((var1 >> 1) * (var1 >> 1)) >> 12;
    var3 = (var3 * ((int32_t)_calib.T3 << 4)) >> 14;
    _t_fine = var2 + var3;
    T = (_t_fine * 5 + 128) >> 8;   // degrees C * 100
    return T;
}

static uint32_t compensate_pressure(uint32_t adc_P) {
    int32_t  var1, var2, var3;
    uint32_t P;

    var1 = (((int32_t)_t_fine) >> 1) - 64000;
    var2 = (((var1 >> 2) * (var1 >> 2)) >> 11) * (int32_t)_calib.P6;
    var2 = var2 + ((var1 * (int32_t)_calib.P5) << 1);
    var2 = (var2 >> 2) + ((int32_t)_calib.P4 << 16);
    var1 = (((((var1 >> 2) * (var1 >> 2)) >> 13) *
             ((int32_t)_calib.P3 << 5)) >> 3) +
           (((int32_t)_calib.P2 * var1) >> 1);
    var1 = var1 >> 18;
    var1 = ((32768 + var1) * (int32_t)_calib.P1) >> 15;

    if (var1 == 0) return 0;

    P    = (uint32_t)(((int32_t)1048576 - (int32_t)adc_P) - (var2 >> 12));
    P    = (uint32_t)((P * (uint32_t)3125));
    if (P < 0x80000000UL)
        P = (P << 1) / (uint32_t)var1;
    else
        P = (P / (uint32_t)var1) * 2;

    var1 = ((int32_t)_calib.P9 * (int32_t)(((P >> 3) * (P >> 3)) >> 13)) >> 12;
    var2 = ((int32_t)(P >> 2) * (int32_t)_calib.P8) >> 13;
    var3 = ((int32_t)(P >> 8) * (int32_t)(P >> 8) * (int32_t)(P >> 8) *
            (int32_t)_calib.P10) >> 17;

    P = (uint32_t)((int32_t)P + ((var1 + var2 + var3 + ((int32_t)_calib.P7 << 7)) >> 4));
    return P;   // Pa
}

static uint32_t compensate_humidity(uint16_t adc_H) {
    int32_t var1, var2, var3, var4, var5, var6;
    uint32_t H;

    var1 = (int32_t)adc_H - ((int32_t)((int32_t)_calib.H1 << 4)) -
           (((int32_t)_t_fine * (int32_t)_calib.H3) / ((int32_t)100) >> 1);
    var2 = ((int32_t)_calib.H2 *
            (((int32_t)_t_fine * (int32_t)_calib.H4) / ((int32_t)100) +
             (((int32_t)_t_fine * ((int32_t)_t_fine * (int32_t)_calib.H5) /
               ((int32_t)100)) >> 6) / ((int32_t)100) + (int32_t)(1 << 14))) >> 10;
    var3 = var1 * var2;
    var4 = (int32_t)_calib.H6;
    var4 = ((var4 << 7) + ((int32_t)_t_fine * (int32_t)_calib.H7) /
            ((int32_t)100)) >> 4;
    var5 = ((var3 >> 14) * (var3 >> 14)) >> 10;
    var6 = (var4 * var5) >> 1;
    H    = (uint32_t)((var3 + var6) >> 12);
    H    = (uint32_t)(((uint32_t)H * (uint32_t)1000) >> 12);

    if (H > 100000) H = 100000;
    return H;
}

// ─── Public API ───────────────────────────────────────────────────────────────

uint8_t BME680_init(void) {
    uint8_t chip_id = 0;

    Serial_println("SPI init...");
    spi_init();

    // NOTE: No soft reset is sent here intentionally.
    // Sending a reset command via SPI while the sensor may still be
    // in I2C mode causes it to re-latch interface selection on reboot,
    // and with CS hardwired to GND it will correctly re-latch as SPI.
    // However skipping reset avoids any ambiguity entirely.

    // Short settling delay
    {
        volatile uint32_t i;
        for (i = 0; i < 20000UL; i++) { __asm nop __endasm; }
    }

    // Read chip ID — must be 0x61 (97)
    chip_id = reg_read(BME680_REG_CHIP_ID);
    Serial_print("Chip ID: ");
    Serial_print_uint(chip_id);
    Serial_println("");

    if (chip_id != BME680_CHIP_ID) {
        Serial_println("Chip ID FAILED - expected 97");
        _state = BME680_STATE_ERROR;
        return 0;
    }

    Serial_println("Chip ID OK");

    // Load calibration data from sensor OTP
    load_calibration();
    Serial_print("T1 calib: ");
    Serial_print_uint(_calib.T1);
    Serial_println("");

    // Configure oversampling: temp x2, pressure x4, humidity x1
    reg_write(BME680_REG_CTRL_HUM,  BME680_OS_1X);
    reg_write(BME680_REG_CTRL_MEAS, (BME680_OS_2X << 5) | (BME680_OS_4X << 2) | BME680_MODE_SLEEP);

    // IIR filter coefficient = 4
    reg_write(BME680_REG_CONFIG, (BME680_FILTER_4 << 2));

    // Disable gas measurements
    reg_write(BME680_REG_CTRL_GAS1, 0x00);

    _state = BME680_STATE_IDLE;
    return 1;
}

uint8_t BME680_update(unsigned int tick, BME680_Data *out) {
    uint8_t  raw[8];
    uint32_t adc_T, adc_P;
    uint16_t adc_H;
    uint8_t  status;

    switch (_state) {

        case BME680_STATE_IDLE:
            _state = BME680_STATE_TRIGGER;
            break;

        case BME680_STATE_TRIGGER:
            reg_write(BME680_REG_CTRL_MEAS,
                      (BME680_OS_2X << 5) | (BME680_OS_4X << 2) | BME680_MODE_FORCED);
            _wait_start = tick;
            _state = BME680_STATE_WAITING;
            break;

        case BME680_STATE_WAITING:
            if ((tick - _wait_start) >= BME680_MEAS_WAIT_TICKS) {
                _state = BME680_STATE_READ;
            }
            break;

        case BME680_STATE_READ:
            status = reg_read(BME680_REG_MEAS_STATUS);
            if (status & 0x80) {
                reg_read_burst(BME680_REG_PRES_MSB, raw, 8);

                adc_P = ((uint32_t)raw[0] << 12) |
                        ((uint32_t)raw[1] << 4)  |
                        ((uint32_t)raw[2] >> 4);

                adc_T = ((uint32_t)raw[3] << 12) |
                        ((uint32_t)raw[4] << 4)  |
                        ((uint32_t)raw[5] >> 4);

                adc_H = ((uint16_t)raw[6] << 8) | raw[7];

                out->temperature = compensate_temperature(adc_T);
                out->pressure    = compensate_pressure(adc_P);
                out->humidity    = compensate_humidity(adc_H);

                _state = BME680_STATE_DONE;
                return 1;
            }
            break;

        case BME680_STATE_DONE:
            _state = BME680_STATE_IDLE;
            break;

        case BME680_STATE_ERROR:
        default:
            break;
    }

    return 0;
}

BME680_State BME680_getState(void) {
    return _state;
}