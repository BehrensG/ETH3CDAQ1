/*
 * scpi_sample.c
 *
 *  Created on: Jun 13, 2021
 *      Author: grzegorz
 */

#include "scpi_sample.h"
#include "bsp.h"
#include "sdram.h"

scpi_result_t SCPI_SampleCount(scpi_t * context)
{
	scpi_number_t count;

	if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &count, TRUE)){
		return SCPI_RES_ERR;
	}

		if(count.special){
			switch(count.content.tag)	{
			case SCPI_NUM_MIN: bsp.samples.count = 1; break;
			case SCPI_NUM_MAX: bsp.samples.count = SDRAM_CHx_SAMPLES_MAX; break;
			case SCPI_NUM_DEF: bsp.samples.count = 1; break;
			default: SCPI_ErrorPush(context, SCPI_ERROR_ILLEGAL_PARAMETER_VALUE); return SCPI_RES_ERR;
			}
		}
		else{

		}

	return SCPI_RES_OK;
}

scpi_result_t SCPI_SampleCountQ(scpi_t * context)
{
	SCPI_ResultUInt32(context, bsp.samples.count);

	return SCPI_RES_OK;
}

scpi_result_t SCPI_SampleTimer(scpi_t * context)
{
	scpi_number_t timer;

	if(!SCPI_ParamNumber(context, scpi_special_numbers_def, &timer, TRUE)){
		return SCPI_RES_ERR;
	}

		if(timer.special){
			switch(timer.content.tag)	{
			case SCPI_NUM_MIN: bsp.samples.count = 1; break;
			case SCPI_NUM_MAX: bsp.samples.count = 1000000; break;
			case SCPI_NUM_DEF: bsp.samples.count = 1000; break;
			default: SCPI_ErrorPush(context, SCPI_ERROR_ILLEGAL_PARAMETER_VALUE); return SCPI_RES_ERR;
			}
		}
		else{

		}

	return SCPI_RES_OK;
}

scpi_result_t SCPI_SampleTimerQ(scpi_t * context)
{
	SCPI_ResultUInt32(context, bsp.samples.timer);

	return SCPI_RES_OK;
}
