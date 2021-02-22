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

HAL_StatusTypeDef PCA9557_Init()
{
	HAL_StatusTypeDef status;
	uint8_t tx_data[2];

	if(bsp.module[0].mounted)
	{
		tx_data[0] = PCA9557_REG_CONFIGURATION;
		tx_data[1] = 0xFC;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE1, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}

		tx_data[0] = PCA9557_REG_OUTPUT_PORT;
		tx_data[1] = 0x00;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE1, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}
	}

	if(bsp.module[1].mounted)
	{
		tx_data[0] = PCA9557_REG_CONFIGURATION;
		tx_data[1] = 0xFC;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE2, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}

		tx_data[0] = PCA9557_REG_OUTPUT_PORT;
		tx_data[1] = 0x00;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE2, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}
	}

	if(bsp.module[1].mounted)
	{
		tx_data[0] = PCA9557_REG_CONFIGURATION;
		tx_data[1] = 0xFC;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE3, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}

		tx_data[0] = PCA9557_REG_OUTPUT_PORT;
		tx_data[1] = 0x00;

		status = HAL_I2C_Master_Transmit(&hi2c4, PCA9557_ADDR_MODULE3, tx_data, 2, 500);

		if(HAL_OK != status)
		{
			LED_Switch(LED_ERROR);
			return status;
		}
	}
}
