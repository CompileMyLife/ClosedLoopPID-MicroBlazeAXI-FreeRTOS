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
#define ACCEL_XOUT_H 0x3B
#define ACCEL_YOUT_H 0x3D
#define ACCEL_ZOUT_H 0x3F
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
/**
 * Initializes the MPU6050 device.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @return XST_SUCCESS if the device was successfully initialized, otherwise XST_FAILURE.
 */
int mpu6050_init(XIic* i2c);
/**
 * Retrieves gyroscope data for a specified axis.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param angle_actual Pointer to store the read gyroscope data.
 * @param axis The axis (X_AXIS, Y_AXIS, Z_AXIS) to read the data from.
 */
void mpu6050_getGyroData(XIic* i2c, int16_t *angle_actual, int axis);
/**
 * Configures the gyroscope full-scale range.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param fs_sel The full-scale range setting.
 */
void mpu6050_gyroCfg(XIic* i2c, uint8_t fs_sel);
/**
 * Sets the MPU6050 into sleep mode.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 */
void mpu6050_setSleepMode(XIic* i2c);
/**
 * Wakes the MPU6050 from sleep mode.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 */
void mpu6050_clearSleepMode(XIic* i2c);
/**
 * Initializes the IIC driver for communication with the MPU6050.
 * 
 * @param IicInstancePtr Pointer to the XIic instance.
 * @param DeviceId The device ID of the IIC.
 * @return XST_SUCCESS if initialization was successful, otherwise XST_FAILURE.
 */
int InitIic(XIic *IicInstancePtr, u16 DeviceId);
/**
 * Calibrates the gyroscope to determine offsets for each axis.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param offset_x Pointer to store the calculated offset for the X axis.
 * @param offset_y Pointer to store the calculated offset for the Y axis.
 * @param offset_z Pointer to store the calculated offset for the Z axis.
 */
void calibrateGyro(XIic* i2c, int16_t* offset_x, int16_t* offset_y, int16_t* offset_z);
/**
 * Retrieves accelerometer data for the X, Y, and Z axes.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param accelX Pointer to store the accelerometer data for the X axis.
 * @param accelY Pointer to store the accelerometer data for the Y axis.
 * @param accelZ Pointer to store the accelerometer data for the Z axis.
 */
void mpu6050_getAccelData(XIic* i2c, int16_t *accelX, int16_t *accelY, int16_t *accelZ);
/**
 * Reads a byte from a specified register of the MPU6050.
 *
 * This function initiates a read operation to the specified register of the MPU6050 device over I2C,
 * storing the result in the provided variable. It handles the communication process, including sending
 * the register address and reading the response.
 *
 * @param IicInstancePtr Pointer to the initialized XIic instance for I2C communication.
 * @param Register The address of the register from which to read.
 * @param value Pointer to a variable where the read byte will be stored.
 * @return Returns XST_SUCCESS if the read operation is successful, otherwise returns XST_FAILURE.
 */
int readRegister(XIic *IicInstancePtr, u8 Register, u8 *value);
/**
 * Writes a byte to a specified register of the MPU6050.
 *
 * This function initiates a write operation to the specified register of the MPU6050 device over I2C.
 * It packages the register address and the byte to be written into a buffer and sends it to the device,
 * handling the necessary I2C communication process.
 *
 * @param IicInstancePtr Pointer to the initialized XIic instance for I2C communication.
 * @param Register The address of the register to which to write.
 * @param value The byte value to write to the register.
 * @return Returns XST_SUCCESS if the write operation is successful, otherwise returns XST_FAILURE.
 */
int writeRegister(XIic *IicInstancePtr, u8 Register, u8 value);

#endif // MPU6050_H
