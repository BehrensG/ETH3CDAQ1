/*
 * module.c
 *
 *  Created on: Feb 1, 2021
 *      Author: grzegorz
 */

#include "module.h"
#include "bsp.h"
#include "PCA9557.h"
#include "ee24.h"

extern I2C_HandleTypeDef hi2c4;

module_eeprom_union_t module_eeprom[3];

static HAL_StatusTypeDef MODULE_Read_EEPROM()
{

}

static void MODULE_Detect()
{
	(ee24_isConnected(&hi2c4, EEPROM_CHANNEL1)) ? (bsp.module[0].mounted = 1) : (bsp.module[0].mounted = 0);
	(ee24_isConnected(&hi2c4, EEPROM_CHANNEL2)) ? (bsp.module[1].mounted = 1) : (bsp.module[1].mounted = 0);
	(ee24_isConnected(&hi2c4, EEPROM_CHANNEL3)) ? (bsp.module[2].mounted = 1) : (bsp.module[2].mounted = 0);
}

HAL_StatusTypeDef MODULE_Init()
{
	HAL_StatusTypeDef status;

	MODULE_Detect();
	status = PCA9557_Init();

	return status;

}
