#pragma once
#include <stdint.h>

#define MPU9250_WHOAMI_EXPECTED  0x71

void MPU9250_init(void);
uint8_t MPU9250_whoami(void);

uint8_t MPU9250_readAccelGyro(
    int16_t *ax, int16_t *ay, int16_t *az,
    int16_t *gx, int16_t *gy, int16_t *gz
);
