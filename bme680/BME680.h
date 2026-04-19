#ifndef BME680_H
#define BME680_H

#include <stdint.h>

// ─── BME680 register addresses ───────────────────────────────────────────────
#define BME680_REG_CHIP_ID        0xD0
#define BME680_REG_RESET          0xE0
#define BME680_REG_CTRL_HUM       0x72
#define BME680_REG_CTRL_MEAS      0x74
#define BME680_REG_CONFIG         0x75
#define BME680_REG_CTRL_GAS1      0x71
#define BME680_REG_STATUS         0x73

// Calibration registers (temperature + pressure)
#define BME680_REG_CALIB_T1_LSB   0xE9   // T1 lsb
#define BME680_REG_CALIB_T1_MSB   0xEA   // T1 msb
#define BME680_REG_CALIB_T2_LSB   0x8A   // T2 lsb
#define BME680_REG_CALIB_T2_MSB   0x8B   // T2 msb
#define BME680_REG_CALIB_T3       0x8C   // T3

#define BME680_REG_CALIB_P1_LSB   0x8E
#define BME680_REG_CALIB_P1_MSB   0x8F
#define BME680_REG_CALIB_P2_LSB   0x90
#define BME680_REG_CALIB_P2_MSB   0x91
#define BME680_REG_CALIB_P3       0x92
#define BME680_REG_CALIB_P4_LSB   0x94
#define BME680_REG_CALIB_P4_MSB   0x95
#define BME680_REG_CALIB_P5_LSB   0x96
#define BME680_REG_CALIB_P5_MSB   0x97
#define BME680_REG_CALIB_P6       0x99
#define BME680_REG_CALIB_P7       0x98
#define BME680_REG_CALIB_P8_LSB   0x9C
#define BME680_REG_CALIB_P8_MSB   0x9D
#define BME680_REG_CALIB_P9_LSB   0x9E
#define BME680_REG_CALIB_P9_MSB   0x9F
#define BME680_REG_CALIB_P10      0xA0

// Calibration registers (humidity)
#define BME680_REG_CALIB_H1_MSB   0xE3
#define BME680_REG_CALIB_H1_LSB   0xE2   // bits [3:0]
#define BME680_REG_CALIB_H2_MSB   0xE1
#define BME680_REG_CALIB_H2_LSB   0xE2   // bits [7:4]
#define BME680_REG_CALIB_H3       0xE4
#define BME680_REG_CALIB_H4       0xE5
#define BME680_REG_CALIB_H5       0xE6
#define BME680_REG_CALIB_H6       0xE7
#define BME680_REG_CALIB_H7       0xE8

// ADC result registers
#define BME680_REG_PRES_MSB       0x1F
#define BME680_REG_PRES_LSB       0x20
#define BME680_REG_PRES_XLSB      0x21
#define BME680_REG_TEMP_MSB       0x22
#define BME680_REG_TEMP_LSB       0x23
#define BME680_REG_TEMP_XLSB      0x24
#define BME680_REG_HUM_MSB        0x25
#define BME680_REG_HUM_LSB        0x26
#define BME680_REG_MEAS_STATUS    0x1D   // bit7 = new_data, bit5 = measuring

// ─── Constants ───────────────────────────────────────────────────────────────
#define BME680_CHIP_ID            0x61
#define BME680_RESET_CMD          0xB6

// Oversampling settings (for ctrl_meas / ctrl_hum)
#define BME680_OS_SKIP            0x00
#define BME680_OS_1X              0x01
#define BME680_OS_2X              0x02
#define BME680_OS_4X              0x03
#define BME680_OS_8X              0x04
#define BME680_OS_16X             0x05

// IIR filter coefficients (config register bits [4:2])
#define BME680_FILTER_OFF         0x00
#define BME680_FILTER_2           0x01
#define BME680_FILTER_4           0x02
#define BME680_FILTER_8           0x03
#define BME680_FILTER_16          0x04

// Forced mode trigger (ctrl_meas bits [1:0])
#define BME680_MODE_SLEEP         0x00
#define BME680_MODE_FORCED        0x01

// Measurement wait ticks (10ms each) — worst case with OS_16X is ~200ms
#define BME680_MEAS_WAIT_TICKS    25   // 250ms, safe margin

// ─── State machine states ─────────────────────────────────────────────────────
typedef enum {
    BME680_STATE_IDLE = 0,
    BME680_STATE_TRIGGER,
    BME680_STATE_WAITING,
    BME680_STATE_READ,
    BME680_STATE_DONE,
    BME680_STATE_ERROR
} BME680_State;

// ─── Calibration data structure ───────────────────────────────────────────────
typedef struct {
    // Temperature
    uint16_t T1;
    int16_t  T2;
    int8_t   T3;
    // Pressure
    uint16_t P1;
    int16_t  P2;
    int8_t   P3;
    int16_t  P4;
    int16_t  P5;
    int8_t   P6;
    int8_t   P7;
    int16_t  P8;
    int16_t  P9;
    uint8_t  P10;
    // Humidity
    uint16_t H1;
    uint16_t H2;
    int8_t   H3;
    int8_t   H4;
    int8_t   H5;
    uint8_t  H6;
    int8_t   H7;
} BME680_Calib;

// ─── Result structure ─────────────────────────────────────────────────────────
typedef struct {
    int32_t  temperature;   // degrees C * 100  (e.g. 2345 = 23.45°C)
    uint32_t pressure;      // Pa * 100          (e.g. 101325 = 1013.25 hPa)
    uint32_t humidity;      // %RH * 1000        (e.g. 45123 = 45.123%)
} BME680_Data;

// ─── Public API ───────────────────────────────────────────────────────────────

// Call once at startup. Returns 1 if chip ID verified OK, 0 on error.
uint8_t BME680_init(void);

// Call every main loop iteration. Drives the non-blocking state machine.
// Pass current tick_10ms value. Returns 1 when fresh data is ready in *out.
uint8_t BME680_update(unsigned int tick, BME680_Data *out);

// Returns current state machine state (for diagnostics)
BME680_State BME680_getState(void);

#endif // BME680_H
