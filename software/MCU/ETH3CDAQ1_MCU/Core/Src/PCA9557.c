/*
 * pca9557.c
 *
 *  Created on: Feb 1, 2021
 *      Author: grzegorz
 */

#include "main.h"
#include "bsp.h"
#include "PCA9557.h"
#include "led.h"

extern I2C_HandleTypeDef hi2c4;


static BSP_StatusTypeDef PCA9557_Read_Output(uint8_t channel, uint8_t* out_data)
{
	BSP_StatusTypeDef status = BSP_OK;
	uint8_t tx_data = PCA9557_REG_OUTPUT_PORT;

	if(bsp.module[channel].mounted)
	{

		status = HAL_I2C_Master_Transmit(&hi2c4, (PCA9557_ADDR_MODULE1 + channel), &tx_data, 1, 500);

		if(BSP_OK != status)
		{
			return status;
		}

		status = HAL_I2C_Master_Receive(&hi2c4, (PCA9557_ADDR_MODULE1 + channel), out_data, 1, 500);

	}

	return status;

}

static BSP_StatusTypeDef PCA9557_EEPROM_WP(uint8_t channel, GPIO_PinState state)
{
	BSP_StatusTypeDef status = BSP_OK;
	uint8_t out_data = 0;
	uint8_t tx_data[2];
	uint8_t tmp = 0;


	status = PCA9557_Read_Output(channel, &out_data);

	tx_data[0] = PCA9557_REG_OUTPUT_PORT;

	if(GPIO_PIN_SET == state)
	{
		tmp = 0x02;
		tx_data[1] = out_data | tmp;
	}
	else if(GPIO_PIN_RESET == state)
	{
		tmp = ~0x02;
		tx_data[1] = out_data & tmp;
	}

	if(BSP_OK == status)
	{
		if(bsp.module[channel].mounted)
		{

			status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE1 + channel, tx_data, 2, 500);

			if(BSP_OK != status)
			{
				return status;
			}

		}
	}
	else
	{
		return status;
	}

	return BSP_OK;
}

BSP_StatusTypeDef PCA9557_Init()
{
	BSP_StatusTypeDef status = BSP_OK;
	uint8_t tx_data[2];

	for (uint8_t x = 0 ; x < 3; x++)
	{
		if(bsp.module[x].mounted)
		{
			tx_data[0] = PCA9557_REG_CONFIGURATION;
			tx_data[1] = 0x00;

			status = HAL_I2C_Master_Transmit(&hi2c4, (PCA9557_ADDR_MODULE1 + 2*x), tx_data, 2, 500);

			if(BSP_OK != status)
			{
				return status;
			}

			tx_data[0] = PCA9557_REG_OUTPUT_PORT;
			tx_data[1] = 0x00;

			status = HAL_I2C_Master_Transmit(&hi2c4, (PCA9557_ADDR_MODULE1 + 2*x), tx_data, 2, 500);

			if(BSP_OK != status)
			{
				return status;
			}
		}
	}

	return BSP_OK;
}
