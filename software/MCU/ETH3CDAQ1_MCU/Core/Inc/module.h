/*
 * module.h
 *
 *  Created on: Feb 1, 2021
 *      Author: grzegorz
 */

#ifndef INC_MODULE_H_
#define INC_MODULE_H_

#include "main.h"
#include "PCA9557.h"

#define MODULE_EEPROM_CHANNEL1		0xA2
#define MODULE_EEPROM_CHANNEL2		0xA4
#define MODULE_EEPROM_CHANNEL3		0xA6

#define MODULE_VALID				0x55


#define VOLTAGE_ISO_TYPE1           0x5601U
#define CURRENT_ISO_TYPE1           0x4301U
#define CURRENT_ISO_TYPE2           0x4302U

#define MODULE_MAX_CHANNELS			3

#define MODULE_EEPROM_CFG_SIZE		41

#define nMODULE_GAIN_1		0x20
#define MODULE_GAIN_10		0x10
#define MODULE_GAIN_100		0x08
#define MODULE_AUTOZER		0x04

#pragma pack(push, 1)

typedef struct module_calibration
{
	float gain[3];
	float offset[3];
	uint8_t valid[3];

}module_calibration_t;

typedef struct module_calibration_date
{
	uint8_t day;
	uint8_t month;
	uint16_t year;
	uint8_t hour;
	uint8_t minute;
	uint8_t second;

}module_calibration_date_t;

typedef union module_eeprom_union
{
	struct eeprom_data
	{
		// Size 1
		uint8_t valid;
		// Size 2
		uint16_t model;
		// Size 4
		uint32_t serial_number;
		// Size 7
		module_calibration_date_t calib_date;
		// Size 27
		module_calibration_t calibration;

	}structure;
	uint8_t bytes[MODULE_EEPROM_CFG_SIZE];

}module_eeprom_union_t;

#pragma pack(pop)

BSP_StatusTypeDef MODULE_Init();
BSP_StatusTypeDef MODULE_Init_EEPROM(uint8_t channel, uint32_t model);
BSP_StatusTypeDef MODULE_Erase_EEPROM(uint8_t channel);
BSP_StatusTypeDef MODULE_Write_EEPROM(uint8_t channel);
BSP_StatusTypeDef MODULE_Read_EEPROM(uint8_t channel);

#endif /* INC_MODULE_H_ */
