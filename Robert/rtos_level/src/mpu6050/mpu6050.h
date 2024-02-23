#ifndef MPU6050_H_
#define MPU6050_H_

#include "xiic.h"

// MPU-6050 I2C address
#define MPU6050_ADDRESS 0x68

// MPU-6050 Register Addresses
#define PWR_MGMT_1 0x6B
#define GYRO_CONFIG 0x1B
#define GYRO_XOUT_H 0x43
#define GYRO_YOUT_H 0x45
#define GYRO_ZOUT_H 0x47

// Function prototypes
void mpu6050_init(XIic *i2cInstance);
void mpu6050_getGyroData(XIic *i2cInstance, u8 *data, int axis);
void mpu6050_gyroCfg(XIic *i2cInstance, u8 range);
void mpu6050_setSleepMode(XIic *i2cInstance);
void mpu6050_clearSleepMode(XIic *i2cInstance);

#endif // MPU6050_H_
