#include "mpu9250/mpu9250.h"
#include "spi\spi.h"
#include "inc\ch554.h"

#define REG_PWR_MGMT_1      0x6B
#define REG_WHO_AM_I        0x75
#define REG_ACCEL_XOUT_H    0x3B

static uint8_t whoami_cache = 0;

static uint8_t mpu_read_reg(uint8_t reg)
{
    uint8_t ret;

    SPIMasterAssertCS();
    CH554SPIMasterWrite(reg | 0x80);   // read bit
    ret = CH554SPIMasterRead();
    SPIMasterDeassertCS();

    return ret;
}

static void mpu_write_reg(uint8_t reg, uint8_t val)
{
    SPIMasterAssertCS();
    CH554SPIMasterWrite(reg & 0x7F);   // write
    CH554SPIMasterWrite(val);
    SPIMasterDeassertCS();
}

void MPU9250_init(void)
{
    // SPI mode 0
    SPIMasterModeSet(0);

    // Wake up device
    mpu_write_reg(REG_PWR_MGMT_1, 0x00);

    // Read WHO_AM_I
    whoami_cache = mpu_read_reg(REG_WHO_AM_I);
}

uint8_t MPU9250_whoami(void)
{
    return whoami_cache;
}

uint8_t MPU9250_readAccelGyro(
    int16_t *ax, int16_t *ay, int16_t *az,
    int16_t *gx, int16_t *gy, int16_t *gz)
{
    uint8_t buf[14];

    SPIMasterAssertCS();
    CH554SPIMasterWrite(REG_ACCEL_XOUT_H | 0x80);

    for(uint8_t i=0; i<14; i++)
        buf[i] = CH554SPIMasterRead();

    SPIMasterDeassertCS();

    *ax = ((int16_t)buf[0] << 8) | buf[1];
    *ay = ((int16_t)buf[2] << 8) | buf[3];
    *az = ((int16_t)buf[4] << 8) | buf[5];

    *gx = ((int16_t)buf[8]  << 8) | buf[9];
    *gy = ((int16_t)buf[10] << 8) | buf[11];
    *gz = ((int16_t)buf[12] << 8) | buf[13];

    return 1;
}
