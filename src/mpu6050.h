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

#ifndef MPU6050_H 
#define MPU6050_H

#include "xiic.h"
#include <stdint.h> // For int16_t

// MPU-6050 I2C Address
#define MPU6050_ADDRESS 0x68


// Register Addresses
#define PWR_MGMT_1   0x6B
#define GYRO_CONFIG  0x1B
#define GYRO_XOUT_H  0x43
#define GYRO_YOUT_H  0x45
#define GYRO_ZOUT_H  0x47
#define WHO_AM_I     0x75

// Gyroscope Full-Scale Range (FS_SEL) Configurations
#define GYRO_FS_SEL_250DPS  0x00 // ± 250 °/s
#define GYRO_FS_SEL_500DPS  0x08 // ± 500 °/s
#define GYRO_FS_SEL_1000DPS 0x10 // ± 1000 °/s
#define GYRO_FS_SEL_2000DPS 0x18 // ± 2000 °/s

// Scale factors for different FS_SEL settings
#define SCALE_FACTOR_250DPS  131.0f
#define SCALE_FACTOR_500DPS  65.5f
#define SCALE_FACTOR_1000DPS 32.8f
#define SCALE_FACTOR_2000DPS 16.4f


// Axis identifiers for getGyroData
#define X_AXIS 0
#define Y_AXIS 1
#define Z_AXIS 2

// Function Prototypes
int readRegister(XIic *IicInstancePtr, u8 Register, u8 *value);
int writeRegister(XIic *IicInstancePtr, u8 Register, u8 value);
int mpu6050_init(XIic* i2c);
void mpu6050_getGyroData(XIic* i2c, int16_t *angle_actual, int axis);
void mpu6050_gyroCfg(XIic* i2c, uint8_t fs_sel);
void mpu6050_setSleepMode(XIic* i2c);
void mpu6050_clearSleepMode(XIic* i2c);
int InitIic(XIic *IicInstancePtr, u16 DeviceId);

#endif // MPU6050_H
