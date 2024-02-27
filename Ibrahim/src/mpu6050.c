/**
 * @file mpu6050.c
 * @brief Driver for MPU-6050 Gyroscope/Accelerometer sensor.
 *
 * This file contains the implementations of functions to interact with the MPU-6050 sensor,
 * including initialization, reading gyroscope data, configuring gyro sensitivity, and managing
 * power modes. Designed for use in real time embedded systems with I2C communication capabilities.
 *
 * @author Robert Wilcox
 * @email wilcox6@pdx.edu
 * @date 2024-02-23
 */

#include "mpu6050.h"

/**
 * Writes a byte to a register on the MPU-6050.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param reg The register address where the byte will be written.
 * @param data The data byte to be written to the register.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int writeRegister(XIic *i2cInstance, u8 reg, u8 data) {
    u8 buffer[2] = {reg, data};
    int Status;

    // Set the I2C slave device address before attempting to communicate.
    XIic_SetAddress(i2cInstance, XII_ADDR_TO_SEND_TYPE, MPU6050_ADDRESS);
    
    // Send the data to the specified register.
    Status = XIic_MasterSend(i2cInstance, buffer, 2);

    // Check if the transmission was successful.
    if (Status != XST_SUCCESS) {
        // Return the error code if the send operation failed.
        return Status;
    }

    // If no errors occurred, return success.
    return XST_SUCCESS;
}

/**
 * Reads a specified number of bytes from a register on the MPU-6050.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param reg The register address from which to start reading.
 * @param buffer Pointer to the buffer where the read data will be stored.
 * @param length The number of bytes to read.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int readRegister(XIic *i2cInstance, u8 reg, u8 *buffer, int length) {
    int Status;

    // Set the I2C slave device address before attempting to communicate.
    XIic_SetAddress(i2cInstance, XII_ADDR_TO_SEND_TYPE, MPU6050_ADDRESS);

    // Send the register address from which data is to be read.
    Status = XIic_MasterSend(i2cInstance, &reg, 1);
    if (Status != XST_SUCCESS) {
        // Return the error code if the send operation failed.
        return Status;
    }

    // Receive the data from the specified register.
    Status = XIic_MasterRecv(i2cInstance, buffer, length);
    if (Status != XST_SUCCESS) {
        // Return the error code if the receive operation failed.
        return Status;
    }

    // If no errors occurred, return success.
    return XST_SUCCESS;
}

/**
 * Initializes the MPU-6050 device, waking it up from sleep mode and reset.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_init(XIic *i2cInstance) {
    // Reset/WakeUp the MPU6050 up by writing 0x10 to the PWR_MGMT_1 register.
    return writeRegister(i2cInstance, PWR_MGMT_1, 0x80);
}

/**
 * Fetches the 6 bit I2C address from the MPU-6050.
 *
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param data Pointer to a buffer where the gyroscope data will be stored.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_getID(XIic *i2cInstance, u8 *data) {
	// Retrieve the 6 bit I2C address from WHO_AM_I register
	return readRegister(i2cInstance, WHO_AM_I, data, 1); // Read one byte of data from the register.
}

/**
 * Fetches the gyroscope data for a specified axis from the MPU-6050.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param data Pointer to a buffer where the gyroscope data will be stored.
 * @param axis The axis for which to fetch the gyroscope data (0=X, 1=Y, 2=Z).
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_getGyroData(XIic *i2cInstance, u8 *data, int axis) {
    u8 reg = GYRO_XOUT_H + (axis * 2); // Calculate the register address based on the axis.
    return readRegister(i2cInstance, reg, data, 2); // Read two bytes of data from the register.
}

/**
 * Configures the gyroscope sensitivity of the MPU-6050.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param range The gyroscope sensitivity range setting.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_gyroCfg(XIic *i2cInstance, u8 range) {
    // Write the configuration to the GYRO_CONFIG register.
    // Use FS_SEL bits
    return writeRegister(i2cInstance, GYRO_CONFIG, range << 3);
}

/**
 * Sets or clears the sleep mode of the MPU-6050.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @param mode 1 to enable sleep mode, 0 to disable it.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_setSleepMode(XIic *i2cInstance, u8 mode) {
    u8 current;
    int Status;

    // First, read the current state of the PWR_MGMT_1 register.
    Status = readRegister(i2cInstance, PWR_MGMT_1, &current, 1);
    if (Status != XST_SUCCESS) {
        return Status; // Return error code if read failed.
    }

    if (mode) {
        current |= (1 << 6); // Set the sleep bit to enable sleep mode.
    } else {
        current &= ~(1 << 6); // Clear the sleep bit to disable sleep mode.
    }

    // Write the modified value back to the PWR_MGMT_1 register.
    return writeRegister(i2cInstance, PWR_MGMT_1, current);
}

/**
 * Clears the sleep mode of the MPU-6050, waking it up.
 * 
 * @param i2cInstance Pointer to the initialized XIic instance for I2C communication.
 * @return XST_SUCCESS if the operation was successful, otherwise an error code.
 */
int mpu6050_clearSleepMode(XIic *i2cInstance) {
    return mpu6050_setSleepMode(i2cInstance, 0); // Directly call setSleepMode with mode = 0 to clear sleep mode.
}
