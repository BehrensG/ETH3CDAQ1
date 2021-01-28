/*
 * scpi_test.c
 *
 *  Created on: Jan 5, 2021
 *      Author: grzegorz
 */

#include "scpi_def.h"
#include "scpi_test.h"
#include "scpi/scpi.h"
#include "bsp.h"

extern float sdram_meas[CHANNELS][SDRAM_CHx_SAMPLES_MAX];
extern I2C_HandleTypeDef hi2c4;

static HAL_StatusTypeDef Test_Voltage(float results[])
{
	HAL_StatusTypeDef status;
	uint8_t tx_data[3] = {TLA2528_SINGLE_REG_WRITE,0x00,0x00};
	uint8_t rx_data[2] = {0x00,0x00};
	float div_factor[7] = {1.0, 1.661, -5.99, 3, 5.99, -5.99, 5.99};

	tx_data[1] = TLA2528_OSR_CFG_REG;
	tx_data[2] = TLA2528_OSR_16;
	status = HAL_I2C_Master_Transmit(&hi2c4, TLA2528_ADDRESS, tx_data, 3, 1000);

	for(uint8_t x = 0; x < 7; x++)
	{
		tx_data[1] = TLA2528_OSR_CHANNEL_SEL_REG;
		tx_data[2] = x;
		HAL_Delay(2);
		status = HAL_I2C_Master_Transmit(&hi2c4, TLA2528_ADDRESS, tx_data, 3, 1000);
		HAL_Delay(2);
		status = HAL_I2C_Master_Receive(&hi2c4, TLA2528_ADDRESS | TLA2528_READ, rx_data, 2, 1000);
		results[x] = div_factor[x]*TLA2528_VOLT_LSB*(float)((rx_data[0] <<8)+ rx_data[1]);
	}

	return status;
}

static uint8_t Test_SDRAM(void)
{
	uint32_t test;
	for(uint8_t i = 0; i < CHANNELS; i++)
	{
		for(uint32_t j = 0; j < SDRAM_CHx_SAMPLES_MAX; j++)
		{
			sdram_meas[i][j] = 0xFFFFFFFF;
			if(0xFFFFFFFF!=sdram_meas[i][j])
			{
				return 1;
			}
		}
	}

	for(uint8_t i = 0; i < CHANNELS; i++)
	{
		for(uint32_t j = 0; j < SDRAM_CHx_SAMPLES_MAX; j++)
		{
			sdram_meas[i][j] = 0x00000000;
			if(sdram_meas[i][j])
			{
				return 2;
			}
		}
	}

	return 0;
}


scpi_result_t SCPI_TestVoltageQ(scpi_t * context)
{
	float results[7];
	Test_Voltage(results);
	SCPI_ResultArrayFloat(context, results, 7, SCPI_FORMAT_ASCII);
	return SCPI_RES_OK;
}


scpi_result_t SCPI_TestSDRAMQ(scpi_t * context)
{
	uint8_t result = 0;

	result = Test_SDRAM();

	SCPI_ResultUInt8(context,result);

	return SCPI_RES_OK;
}
