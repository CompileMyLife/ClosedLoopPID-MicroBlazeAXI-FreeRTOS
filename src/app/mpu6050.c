/**
 * @file mpu6050.c
 * @brief Interface for MPU-6050 Gyroscope/Accelerometer sensor driver.
 *
 * This file declares the functions for interfacing with the MPU-6050 sensor. It includes
 * functions for initializing the sensor, reading gyroscope data, setting gyro sensitivity,
 * and managing the sensor's power modes through sleep and wake functions. Designed to facilitate
 * communication with the MPU-6050 sensor over I2C in embedded systems.
 *
 * @author Robert Wilcox
 * @email wilcox6@pdx.edu
 * @date 2024-02-23
 */

#include "xiic.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "microblaze_sleep.h"
#include "mpu6050.h"

// Definitions
#define IIC_DEVICE_ID XPAR_IIC_0_DEVICE_ID
#define MPU6050_ADDRESS 0x68 // Change if needed

// Global instance of the IIC driver
XIic IicInstance;
static uint8_t currentFsSel = GYRO_FS_SEL_250DPS; // Default setting

/**
 * Initializes the IIC driver for communication.
 * 
 * This function will look up the configuration for the IIC device, initialize it with the 
 * configuration found, and perform any necessary setup steps.
 * 
 * @param IicInstancePtr Pointer to the XIic instance.
 * @param DeviceId The device ID of the IIC.
 * @return XST_SUCCESS if initialization was successful, otherwise XST_FAILURE.
 */
int InitIic(XIic *IicInstancePtr, u16 DeviceId) {
    int Status;
    XIic_Config *ConfigPtr;

    ConfigPtr = XIic_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        return XST_FAILURE;
    }

    Status = XIic_CfgInitialize(IicInstancePtr, ConfigPtr, ConfigPtr->BaseAddress);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

/**
 * Writes a value to a specified register over IIC.
 * 
 * This function packages the register and value into a buffer and sends it over IIC to the device.
 * 
 * @param IicInstancePtr Pointer to the XIic instance.
 * @param Register The register address to write to.
 * @param value The value to write into the register.
 * @return XST_SUCCESS if the write operation was successful, otherwise XST_FAILURE.
 */
int writeRegister(XIic *IicInstancePtr, u8 Register, u8 value) {
	u8 sendBuffer[2];
	int SentCount;

	sendBuffer[0] = Register;
	sendBuffer[1] = value;

	// Wait for bus to be free
	while (XIic_IsIicBusy(IicInstancePtr) == TRUE);

	SentCount = XIic_Send(IicInstancePtr->BaseAddress, MPU6050_ADDRESS, sendBuffer, 2, XIIC_STOP);

	if(SentCount != 2) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

/**
 * Reads a value from a specified register over IIC.
 * 
 * This function sends the register address and then reads back the value from that register.
 * 
 * @param IicInstancePtr Pointer to the XIic instance.
 * @param Register The register address to read from.
 * @param value Pointer to where the read value will be stored.
 * @return XST_SUCCESS if the read operation was successful, otherwise XST_FAILURE.
 */
int readRegister(XIic *IicInstancePtr, u8 Register, u8 *value) {
	int status;

	//Set the reg address and repeated start
	status = XIic_Send(IicInstancePtr->BaseAddress, MPU6050_ADDRESS, &Register, 1, XIIC_REPEATED_START);
	if(status != 1) {
		return XST_FAILURE;
	}

	//Read from the data register
	status = XIic_Recv(IicInstancePtr->BaseAddress, MPU6050_ADDRESS, value, 1, XIIC_STOP);
	if(status != 1) {
			return XST_FAILURE;
		}

	return XST_SUCCESS;
}

/**
 * Initializes the MPU6050 device.
 * 
 * This function resets the device, waits for it to be ready, and then wakes it up for data collection.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @return XST_SUCCESS if the device was successfully initialized, otherwise XST_FAILURE.
 */
int mpu6050_init(XIic* i2c) {

    if (writeRegister(i2c, PWR_MGMT_1, 0x80) != XST_SUCCESS) {
    	xil_printf("Failed to reset gyro\n");
        return XST_FAILURE; // Return failure if sending data fails
    }

    usleep(100000);

    if (writeRegister(i2c, PWR_MGMT_1, 0x00) != XST_SUCCESS) {
        	xil_printf("Failed to wake up gyro\n");
            return XST_FAILURE; // Return failure if sending data fails
        }

    return XST_SUCCESS; // Return success if all operations succeed
}

/**
 * Fetches the gyroscope data for a specified axis.
 * 
 * This function reads two bytes from the gyroscope output registers corresponding to the specified axis 
 * and combines them into a single 16-bit value.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param angle_actual Pointer to store the read gyroscope data.
 * @param axis The axis (X_AXIS, Y_AXIS, or Z_AXIS) for which to read the data.
 */
void mpu6050_getGyroData(XIic* i2c, int16_t *angle_actual, int axis) {
    u8 startReg = GYRO_XOUT_H + (axis * 2);
    u8 recvBuffer[2]; // Buffer to hold the two bytes read

    // Read the first byte
    if (readRegister(i2c, startReg, &recvBuffer[0]) != XST_SUCCESS) {
        xil_printf("Failed to read gyro data\n");
        return;
    }

    // Read the second byte
    if (readRegister(i2c, startReg + 1, &recvBuffer[1]) != XST_SUCCESS) {
        xil_printf("Failed to read gyro data\n");
        return;
    }

    // Combine the bytes into a 16-bit value
    *angle_actual = (int16_t)((recvBuffer[0] << 8) | recvBuffer[1]);
}

/**
 * Configures the gyroscope sensitivity.
 * 
 * This function writes to the gyroscope configuration register to set the full-scale range.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param fs_sel The full-scale range setting.
 */
void mpu6050_gyroCfg(XIic* i2c, uint8_t fs_sel) {
    // Set the full-scale range
    if (writeRegister(i2c, GYRO_CONFIG, fs_sel) != XST_SUCCESS) {
        xil_printf("Failed to write gyro configuration\n");
    }

    // Update the current FS_SEL setting
    currentFsSel = fs_sel;
}

/**
 * Enables sleep mode on the MPU6050.
 * 
 * This function sets the sleep bit in the power management register.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 */
void mpu6050_setSleepMode(XIic* i2c) {
    if (writeRegister(i2c, PWR_MGMT_1, 0x40) != XST_SUCCESS) { // Set sleep mode bit
        xil_printf("Failed to set sleep mode\n");
    }
}

/**
 * Disables sleep mode on the MPU6050.
 * 
 * This function clears the sleep bit in the power management register.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 */
void mpu6050_clearSleepMode(XIic* i2c) {
    if (writeRegister(i2c, PWR_MGMT_1, 0x00) != XST_SUCCESS) { // Clear sleep mode bit
        xil_printf("Failed to clear sleep mode\n");
    }
}

/**
 * Calculates the scale factor based on the gyroscope's full-scale range setting.
 * 
 * This function returns the appropriate scale factor for converting raw gyroscope data into degrees per second.
 * 
 * @return The scale factor for the current full-scale range setting.
 */
float getGyroScaleFactor() {
    switch (currentFsSel) {
        case GYRO_FS_SEL_250DPS:
            return SCALE_FACTOR_250DPS;
        case GYRO_FS_SEL_500DPS:
            return SCALE_FACTOR_500DPS;
        case GYRO_FS_SEL_1000DPS:
            return SCALE_FACTOR_1000DPS;
        case GYRO_FS_SEL_2000DPS:
            return SCALE_FACTOR_2000DPS;
        default:
            return SCALE_FACTOR_250DPS; // Default case
    }
}

/**
 * Calibrates the gyroscope by calculating the average offset for each axis.
 * 
 * This function collects a series of samples, then computes the average offset for the x, y, and z axes.
 * 
 * @param i2c Pointer to the XIic instance for communication.
 * @param offset_x Pointer to store the calculated offset for the X axis.
 * @param offset_y Pointer to store the calculated offset for the Y axis.
 * @param offset_z Pointer to store the calculated offset for the Z axis.
 */
void calibrateGyro(XIic* i2c, int16_t* offset_x, int16_t* offset_y, int16_t* offset_z) {

    // variables to hold sample accumulation
    int32_t sum_x = 0, sum_y = 0, sum_z = 0;
    const int samples = 1000;

    // Loop to get a bunch of samples
    for (int i = 0; i < samples; ++i) {
        int16_t x, y, z;
        mpu6050_getGyroData(i2c, &x, X_AXIS);
        mpu6050_getGyroData(i2c, &y, Y_AXIS);
        mpu6050_getGyroData(i2c, &z, Z_AXIS);

        sum_x += x;
        sum_y += y;
        sum_z += z;
        usleep(1000); // Short delay between samples
    }

    // Calculate offsets based on sample data
    *offset_x = sum_x / samples;
    *offset_y = sum_y / samples;
    *offset_z = sum_z / samples;
}

/**
 * Retrieves accelerometer data for the X, Y, and Z axes.
 *
 * This function reads the accelerometer data from the MPU6050 by accessing specific registers
 * for each axis. It reads two bytes per axis and combines them to form 16-bit integers that represent
 * the accelerometer data for the X, Y, and Z axes. In case of a read error, the function will print an error
 * message and return.
 *
 * @param i2c Pointer to the XIic instance used for I2C communication with the MPU6050.
 * @param accelX Pointer to a variable where the accelerometer data for the X axis will be stored.
 * @param accelY Pointer to a variable where the accelerometer data for the Y axis will be stored.
 * @param accelZ Pointer to a variable where the accelerometer data for the Z axis will be stored.
 */
void mpu6050_getAccelData(XIic* i2c, int16_t *accelX, int16_t *accelY, int16_t *accelZ) {

    // Variables to store data
    u8 startRegX = ACCEL_XOUT_H;
    u8 startRegY = ACCEL_YOUT_H;
    u8 startRegZ = ACCEL_ZOUT_H;
    u8 recvBufferX[2];
    u8 recvBufferY[2];
    u8 recvBufferZ[2];

    // Read the X-axis data into the variables, checking for success.
    if (readRegister(i2c, startRegX, &recvBufferX[0]) != XST_SUCCESS || readRegister(i2c, startRegX + 1, &recvBufferX[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel X data\n");
        return;
    }

    // Read the Y-axis data ""
    if (readRegister(i2c, startRegY, &recvBufferY[0]) != XST_SUCCESS || readRegister(i2c, startRegY + 1, &recvBufferY[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel Y data\n");
        return;
    }

    // Read the Z-axis data ""
    if (readRegister(i2c, startRegZ, &recvBufferZ[0]) != XST_SUCCESS || readRegister(i2c, startRegZ + 1, &recvBufferZ[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel Z data\n");
        return;
    }

    // Combine the bytes into 16-bit values
    *accelX = (int16_t)((recvBufferX[0] << 8) | recvBufferX[1]);
    *accelY = (int16_t)((recvBufferY[0] << 8) | recvBufferY[1]);
    *accelZ = (int16_t)((recvBufferZ[0] << 8) | recvBufferZ[1]);
}


