/*
 * dac8564.c
 *
 *  Created on: Jan 19, 2021
 *      Author: grzegorz
 */

#include "main.h"
#include "bsp.h"
#include "dac8564.h"

extern SPI_HandleTypeDef hspi5;

static uint16_t DAC8564_Calculate_Data(double voltage)
{
	double tmp = 0.0;
	uint32_t data = 0;
	tmp = ((voltage+DAC8564_VOLT_OFFSET)/DAC8564_VOLT_GAIN)/DAC8564_VOLT_LSB;
	data = (uint32_t)tmp & 0xFFFF;
	return (uint16_t)data;
}

HAL_StatusTypeDef DAC8564_Set_Voltage(uint8_t channel, double voltage)
{
	HAL_SPI_StateTypeDef status;
	uint8_t tx_data[3];
	uint16_t data = DAC8564_Calculate_Data(voltage);

	tx_data[0] = (uint8_t)(DAC8564_LOAD | channel);
	tx_data[1] = (uint8_t)((data >> 8) & 0xFF);
	tx_data[2] = (uint8_t)(data & 0xFF);

	HAL_GPIO_WritePin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin, 0);
	status = HAL_SPI_Transmit(&hspi5, tx_data, 3, 1000);
	HAL_GPIO_WritePin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin, 1);

	return status;
}
