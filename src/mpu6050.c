#include "xiic.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "mpu6050.h"

// Definitions
#define IIC_DEVICE_ID XPAR_IIC_0_DEVICE_ID
#define MPU6050_ADDRESS 0x68 // Change if needed

// Global instance of the IIC driver
XIic IicInstance;
static uint8_t currentFsSel = GYRO_FS_SEL_250DPS; // Default setting, update this when you change FS_SEL


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
