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

BSP_StatusTypeDef MODULE_Write_EEPROM(uint8_t channel)
{
	BSP_StatusTypeDef status;


	if(bsp.module[channel].mounted)
	{
		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_RESET);
		(ee24_write((MODULE_EEPROM_CHANNEL1 + 2*channel), 0, &module_eeprom[channel].bytes, MODULE_EEPROM_CFG_SIZE)) ? (status = BSP_OK) : (status = BSP_EEPROM_WRITE_ERROR);;
		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_SET);
	}

	return status;
}

BSP_StatusTypeDef MODULE_Read_EEPROM(uint8_t channel)
{
	BSP_StatusTypeDef status;


	if(bsp.module[channel].mounted)
	{
		(ee24_read((MODULE_EEPROM_CHANNEL1 + 2*channel), 0, &module_eeprom[channel].bytes, MODULE_EEPROM_CFG_SIZE)) ? (status = BSP_OK) : (status = BSP_EEPROM_WRITE_ERROR);

	}

	return status;
}

static void MODULE_Detect()
{
	bsp.module[0].mounted = ee24_isConnected(MODULE_EEPROM_CHANNEL1);
	bsp.module[1].mounted = ee24_isConnected(MODULE_EEPROM_CHANNEL2);
	bsp.module[2].mounted = ee24_isConnected(MODULE_EEPROM_CHANNEL3);

}

BSP_StatusTypeDef MODULE_Init()
{
	BSP_StatusTypeDef status;

	for(uint8_t x = 0; x < MODULE_MAX_CHANNELS; x++)
	{
		module_eeprom[x].structure.valid = 0;
		module_eeprom[x].structure.serial_number = 0;
		module_eeprom[x].structure.model = 0;

		module_eeprom[x].structure.calib_date.day = 0;
		module_eeprom[x].structure.calib_date.hour = 0;
		module_eeprom[x].structure.calib_date.minute = 0;
		module_eeprom[x].structure.calib_date.month = 0;
		module_eeprom[x].structure.calib_date.second = 0;
		module_eeprom[x].structure.calib_date.year = 0;

		module_eeprom[x].structure.calibration.gain[0] = 0.0;
		module_eeprom[x].structure.calibration.gain[1] = 0.0;
		module_eeprom[x].structure.calibration.gain[2] = 0.0;
		module_eeprom[x].structure.calibration.offset[0] = 0.0;
		module_eeprom[x].structure.calibration.offset[1] = 0.0;
		module_eeprom[x].structure.calibration.offset[2] = 0.0;
		module_eeprom[x].structure.calibration.valid[0] = 0;
		module_eeprom[x].structure.calibration.valid[1] = 0;
		module_eeprom[x].structure.calibration.valid[2] = 0;
	}

	MODULE_Detect();
	status = PCA9557_Init();

	for (uint8_t channel = 0; channel < MODULE_MAX_CHANNELS; channel++ )
	{
		status = MODULE_Read_EEPROM(channel);
	}

	return status;

}

BSP_StatusTypeDef MODULE_Init_EEPROM(uint8_t channel, uint32_t model)
{
	BSP_StatusTypeDef status;

	if(bsp.module[channel].mounted)
	{
		module_eeprom[channel].structure.valid = MODULE_VALID;
		module_eeprom[channel].structure.serial_number = 0;
		module_eeprom[channel].structure.model = model;

		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_RESET);
		(ee24_write((MODULE_EEPROM_CHANNEL1 + 2*channel), 0, &module_eeprom[channel].bytes, MODULE_EEPROM_CFG_SIZE)) ? (status = BSP_OK) : (status = BSP_EEPROM_WRITE_ERROR);
		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_SET);
	}

	return BSP_OK;

}

BSP_StatusTypeDef MODULE_Erase_EEPROM(uint8_t channel)
{
	BSP_StatusTypeDef status;

	if(bsp.module[channel].mounted)
	{
		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_RESET);
		(ee24_eraseChip((MODULE_EEPROM_CHANNEL1 + 2*channel))) ? (status = BSP_OK) : (status = BSP_EEPROM_WRITE_ERROR);
		status = PCA9557_EEPROM_WP(channel, GPIO_PIN_SET);
	}

	return status;

}
