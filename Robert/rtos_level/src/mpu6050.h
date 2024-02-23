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

/**
 * Initializes the MPU-6050 sensor.
 * This involves waking the sensor from sleep mode and preparing it for data collection.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 */
int mpu6050_init(XIic *i2cInstance);

/**
 * Reads gyroscope data from a specified axis (X, Y, or Z) of the MPU-6050 sensor.
 * The data is read from the sensor's gyroscope registers and returned to the caller.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param data Buffer where the gyroscope data will be stored.
 * @param axis The axis from which to read the data (0 for X, 1 for Y, 2 for Z).
 */
int mpu6050_getGyroData(XIic *i2cInstance, u8 *data, int axis);

/**
 * Configures the gyroscope sensitivity of the MPU-6050 sensor.
 * Allows setting the full-scale range of the gyroscope.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param range The gyroscope sensitivity range setting. The range parameter
 *              determines the full-scale range of the gyroscope outputs.
 *              Valid range settings are:
 *              - 0x00: ±250 degrees per second (°/s)
 *              - 0x01: ±500 degrees per second (°/s)
 *              - 0x02: ±1000 degrees per second (°/s)
 *              - 0x03: ±2000 degrees per second (°/s)
 *              These settings correspond to the sensitivity adjustment for the
 *              gyroscope. A lower range setting provides higher sensitivity
 *              and finer detection for smaller movements, while a higher range
 *              setting is suitable for tracking fast or large rotational movements.
 */
int mpu6050_gyroCfg(XIic *i2cInstance, u8 range);


/**
 * Sets the MPU-6050 sensor into sleep mode.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param mode Set to 1 to enable sleep mode, 0 to disable it (wake the sensor up).
 */
int mpu6050_setSleepMode(XIic *i2cInstance, u8 mode);

/**
 * Clears the sleep mode of the MPU-6050 sensor, waking it up.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 */
int mpu6050_clearSleepMode(XIic *i2cInstance);

#endif // MPU6050_H_
