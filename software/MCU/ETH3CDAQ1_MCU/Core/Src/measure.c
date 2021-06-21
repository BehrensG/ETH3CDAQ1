/*
 * measure.c
 *
 *  Created on: Jun 5, 2021
 *      Author: grzegorz
 */


#include "measure.h"
#include "math.h"

extern double ADS8681_LSB[5];
extern float global_sdram_meas[CHANNELS][SDRAM_CHx_SAMPLES_MAX];


BSP_StatusTypeDef MEAS_ZeroOffset()
{
	BSP_StatusTypeDef status;
	uint8_t matrix[3] = {CHx_M_GND, CHx_M_GND, CHx_M_GND};
	uint8_t loop_size = 10;
	float values[3] = {0,0,0};
	float tmp[3] = {0,0,0};
	uint8_t range[3] = {0,0,0};

	DG211_ResetAll();
	HAL_Delay(5);
	DG211_Switch(matrix);
	HAL_Delay(5);
	status=ADS8681_Set_Range(range);
	HAL_Delay(2);

	for (uint8_t x = 0; x < loop_size; x++)
	{
		status = MEAS_GetValues(tmp);
		if(BSP_OK == status)
		{
			values[0] += tmp[0];
			values[1] += tmp[1];
			values[2] += tmp[2];
		}
		else
		{
			break;
		}

	}

	if(BSP_OK == status)
	{
		bsp.adc[0].zero_offset = (float)(values[0]/loop_size);
		bsp.adc[1].zero_offset = (float)(values[1]/loop_size);
		bsp.adc[2].zero_offset = (float)(values[2]/loop_size);
	}

	return status;
}

BSP_StatusTypeDef MEAS_GetValues(float values[])
{
	BSP_StatusTypeDef status;
	uint16_t raw_data[3] = {0, 0, 0};
	double tmp[3] = {0, 0, 0};

	status = ADS8681_Raw_Data(raw_data);


	if(BSP_OK == status)
	{
		tmp[0] = raw_data[0] - ADS8681_FSR_CENTER;
		tmp[1] = raw_data[1] - ADS8681_FSR_CENTER;
		tmp[2] = raw_data[2] - ADS8681_FSR_CENTER;

		values[0] = (float)(tmp[0]*ADS8681_LSB[bsp.adc[0].range] - bsp.adc[0].zero_offset);
		values[1] = (float)(tmp[1]*ADS8681_LSB[bsp.adc[1].range] - bsp.adc[1].zero_offset);
		values[2] = (float)(tmp[2]*ADS8681_LSB[bsp.adc[2].range] - bsp.adc[2].zero_offset);
	}

	return status;
}

BSP_StatusTypeDef MEAS_MeasToSDRAM(uint32_t samples)
{
	BSP_StatusTypeDef status;
	float meas[3]={0,0,0};

	for (uint32_t x = 0; x < samples; x++)
	{

		status = MEAS_GetValues(meas);
		if(BSP_OK == status)
		{
			global_sdram_meas[0][x] = meas[0];
			global_sdram_meas[1][x] = meas[1];
			global_sdram_meas[2][x] = meas[2];

		}
		else
		{
			break;
		}

	}
	return status;
}
