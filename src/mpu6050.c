#include "xiic.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "mpu6050.h"

// Definitions
#define IIC_DEVICE_ID XPAR_IIC_0_DEVICE_ID
#define MPU6050_ADDRESS 0x68 // Change if needed

// Global instance of the IIC driver
XIic IicInstance;
static uint8_t currentFsSel = GYRO_FS_SEL_250DPS; // Default setting


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

void mpu6050_gyroCfg(XIic* i2c, uint8_t fs_sel) {
    // Set the full-scale range
    if (writeRegister(i2c, GYRO_CONFIG, fs_sel) != XST_SUCCESS) {
        xil_printf("Failed to write gyro configuration\n");
    }

    // Update the current FS_SEL setting
    currentFsSel = fs_sel;
}


void mpu6050_setSleepMode(XIic* i2c) {
    if (writeRegister(i2c, PWR_MGMT_1, 0x40) != XST_SUCCESS) { // Set sleep mode bit
        xil_printf("Failed to set sleep mode\n");
    }
}

void mpu6050_clearSleepMode(XIic* i2c) {
    if (writeRegister(i2c, PWR_MGMT_1, 0x00) != XST_SUCCESS) { // Clear sleep mode bit
        xil_printf("Failed to clear sleep mode\n");
    }
}

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

void calibrateGyro(XIic* i2c, int16_t* offset_x, int16_t* offset_y, int16_t* offset_z) {
    int32_t sum_x = 0, sum_y = 0, sum_z = 0;
    const int samples = 1000;

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

    *offset_x = sum_x / samples;
    *offset_y = sum_y / samples;
    *offset_z = sum_z / samples;
}

void mpu6050_getAccelData(XIic* i2c, int16_t *accelX, int16_t *accelY, int16_t *accelZ) {
    u8 startRegX = ACCEL_XOUT_H;
    u8 startRegY = ACCEL_YOUT_H;
    u8 startRegZ = ACCEL_ZOUT_H;
    u8 recvBufferX[2];
    u8 recvBufferY[2];
    u8 recvBufferZ[2];

    // Read the X-axis data
    if (readRegister(i2c, startRegX, &recvBufferX[0]) != XST_SUCCESS || readRegister(i2c, startRegX + 1, &recvBufferX[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel X data\n");
        return;
    }

    // Read the Y-axis data
    if (readRegister(i2c, startRegY, &recvBufferY[0]) != XST_SUCCESS || readRegister(i2c, startRegY + 1, &recvBufferY[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel Y data\n");
        return;
    }

    // Read the Z-axis data
    if (readRegister(i2c, startRegZ, &recvBufferZ[0]) != XST_SUCCESS || readRegister(i2c, startRegZ + 1, &recvBufferZ[1]) != XST_SUCCESS) {
        xil_printf("Failed to read accel Z data\n");
        return;
    }

    // Combine the bytes into 16-bit values
    *accelX = (int16_t)((recvBufferX[0] << 8) | recvBufferX[1]);
    *accelY = (int16_t)((recvBufferY[0] << 8) | recvBufferY[1]);
    *accelZ = (int16_t)((recvBufferZ[0] << 8) | recvBufferZ[1]);
}


