/*
 * eeprom.c
 *
 *  Created on: Jun 13, 2021
 *      Author: grzegorz
 */


#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "eeprom.h"

extern I2C_HandleTypeDef hi2c4;



BSP_StatusTypeDef EEPROM_Reset()
{

	if(ee24_isConnected(EEPROM_ADDRESS))
	{
		if(ee24_eraseChip(EEPROM_ADDRESS))
		{
			return BSP_OK;
		}
		else
		{
			return BSP_EEPROM_WRITE_ERROR;
		}
	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}


}

BSP_StatusTypeDef EEPROM_Write(bsp_eeprom_union_t* union_data, size_t size)
{
	uint8_t tx_data = EEPROM_WRITE_DONE;

	if(ee24_isConnected(EEPROM_ADDRESS))
	{
		if(ee24_write(EEPROM_ADDRESS, 0, union_data->bytes, size, 1000))
		{
			if(ee24_write(EEPROM_ADDRESS, EEPROM_END, &tx_data, 1, 1000))
			{
				return BSP_OK;
			}
			else
			{
				return BSP_EEPROM_WRITE_ERROR;
			}

		}
		else
		{
			return BSP_EEPROM_WRITE_ERROR;
		}

	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}
}

BSP_StatusTypeDef EEPROM_Read(bsp_eeprom_union_t* union_data, size_t size)
{

	if(ee24_isConnected(EEPROM_ADDRESS))
	{
		if(ee24_read(EEPROM_ADDRESS, 0, union_data->bytes, size, 1000))
		{
			return BSP_OK;
		}
		else
		{
			return BSP_EEPROM_READ_ERROR;
		}

	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}
}

BSP_StatusTypeDef EEPROM_Status()
{
	uint8_t rx_data = 0;

	if(ee24_isConnected(EEPROM_ADDRESS))
	{
		if(ee24_read(EEPROM_ADDRESS, EEPROM_END, &rx_data, 1, 1000))
		{
			if(EEPROM_WRITE_DONE == rx_data)
			{
				return BSP_OK;
			}
			else
			{
				return BSP_EEPROM_EMPTY;
			}

		}
		else
		{
			return BSP_EEPROM_READ_ERROR;
		}

	}
	else
	{
		return BSP_EEPROM_NO_CONNECTION;
	}
}

