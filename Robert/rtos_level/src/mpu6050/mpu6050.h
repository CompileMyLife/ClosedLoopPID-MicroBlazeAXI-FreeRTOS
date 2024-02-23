/**
 * @file mpu6050.h
 * @brief Interface for MPU-6050 Gyroscope/Accelerometer sensor driver.
 *
 * This header file declares the functions for interfacing with the MPU-6050 sensor. It includes
 * function prototypes for initializing the sensor, reading gyroscope data, setting gyro sensitivity,
 * and managing the sensor's power modes through sleep and wake functions. Designed to facilitate
 * communication with the MPU-6050 sensor over I2C in embedded systems.
 *
 * @author Robert Wilcox
 * @email wilcox6@pdx.edu
 * @date 2024-02-23
 */


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
void mpu6050_setSleepMode(XIic *i2cInstance, u8 mode);
void mpu6050_clearSleepMode(XIic *i2cInstance);

#endif // MPU6050_H_
