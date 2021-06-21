/*
 * scpi_initiate.c
 *
 *  Created on: 21.06.2021
 *      Author: BehrensG
 */


#include "scpi_initiate.h"
#include "bsp.h"
#include "ADS8681.h"

scpi_result_t SCPI_Initiate(scpi_t * context)
{
	BSP_StatusTypeDef status;
	uint32_t trg_count = bsp.trigger.count;
	float meas[3]={0,0,0};
	uint8_t range[3] = {bsp.adc[0].range, bsp.adc[1].range, bsp.adc[2].range};

	if(TRG_IMM == bsp.trigger.source)
	{
		if(bsp.trigger.delay)
		{
			HAL_Delay(bsp.trigger.delay);
		}

		status=ADS8681_Set_Range(range);
		status = MEAS_MeasToSDRAM(bsp.samples.count);

	}
	else if(TRG_EXT == bsp.trigger.source)
	{

	}

	return SCPI_RES_OK;
}
