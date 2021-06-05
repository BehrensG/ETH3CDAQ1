/*
 * measure.c
 *
 *  Created on: Jun 5, 2021
 *      Author: grzegorz
 */


#include "measure.h"
#include "math.h"

extern double ADS8681_LSB[5];



BSP_StatusTypeDef MEAS_ZeroOffset()
{
	BSP_StatusTypeDef status;
	uint8_t matrix[3] = {CHx_M_GND, CHx_M_GND, CHx_M_GND};
	uint8_t loop_size = 20;
	float values[3] = {0,0,0};
	float tmp[3] = {0,0,0};

	DG211_ResetAll();
	osDelay(pdMS_TO_TICKS(5));
	DG211_Switch(matrix);
	osDelay(pdMS_TO_TICKS(5));

	for (uint8_t x = 0; x < loop_size; x++)
	{
		status = MEAS_GetValues(tmp);
		osDelay(pdMS_TO_TICKS(1));
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

		values[0] = (float)(tmp[0]*ADS8681_LSB[bsp.adc[0].range]);
		values[1] = (float)(tmp[1]*ADS8681_LSB[bsp.adc[1].range]);
		values[2] = (float)(tmp[2]*ADS8681_LSB[bsp.adc[2].range]);
	}

	return status;
}
