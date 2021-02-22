/*
 * module.c
 *
 *  Created on: Feb 1, 2021
 *      Author: grzegorz
 */

#include "module.h"
#include "bsp.h"
#include "PCA9557.h"

extern I2C_HandleTypeDef hi2c4;

static HAL_StatusTypeDef MODULE_Read_EEPROM()
{

}

static void MODULE_Detect()
{
	(HAL_OK == HAL_I2C_IsDeviceReady(&hi2c4, EEPROM_CHANNEL1, 5, 500)) ? bsp.module[0].mounted == 1 : bsp.module[0].mounted == 0;
	(HAL_OK == HAL_I2C_IsDeviceReady(&hi2c4, EEPROM_CHANNEL2, 5, 500)) ? bsp.module[1].mounted == 1 : bsp.module[1].mounted == 0;
	(HAL_OK == HAL_I2C_IsDeviceReady(&hi2c4, EEPROM_CHANNEL3, 5, 500)) ? bsp.module[2].mounted == 1 : bsp.module[2].mounted == 0;
}

HAL_StatusTypeDef MODULE_Init()
{
	HAL_StatusTypeDef status;

	MODULE_Detect();
	status = MODULE_Read_EEPROM();
	status = PCA9557_Init();

}
