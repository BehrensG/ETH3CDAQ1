/*
 * dac8564.c
 *
 *  Created on: Jan 19, 2021
 *      Author: grzegorz
 */

#include "DAC8564.h"

extern SPI_HandleTypeDef hspi5;

static uint16_t DAC8564_Calculate_Data(double voltage)
{
	double tmp = 0.0;
	uint32_t data = 0;
	tmp = ((voltage+DAC8564_VOLT_OFFSET)/DAC8564_VOLT_GAIN)/DAC8564_VOLT_LSB;
	data = (uint32_t)tmp & 0xFFFF;
	return (uint16_t)data;
}

BSP_StatusTypeDef DAC8564_Init(void)
{
	BSP_StatusTypeDef status;

	status = DAC8564_Set_Voltage(DAC8564_DAC_A, 1.0);
	status = DAC8564_Set_Voltage(DAC8564_DAC_B, 1.0);
	status = DAC8564_Set_Voltage(DAC8564_DAC_C, 1.0);

	return status;
}

BSP_StatusTypeDef DAC8564_Set_Voltage(uint8_t channel, double voltage)
{
	BSP_StatusTypeDef status;
	uint8_t tx_data[3];
	uint16_t data = DAC8564_Calculate_Data(voltage);

	tx_data[0] = (uint8_t)(DAC8564_LOAD | channel);
	tx_data[1] = (uint8_t)((data >> 8) & 0xFF);
	tx_data[2] = (uint8_t)(data & 0xFF);


	LL_GPIO_ResetOutputPin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin);
	status = HAL_SPI_Transmit(&hspi5, tx_data, 3, 1000);
	LL_GPIO_SetOutputPin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin);

	return status;
}
