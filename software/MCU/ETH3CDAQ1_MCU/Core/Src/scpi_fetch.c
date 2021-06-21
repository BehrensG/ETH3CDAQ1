/*
 * scpi_fetch.c
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#include "scpi_fetch.h"
#include "scpi_def.h"
#include "module.h"

scpi_result_t SCPI_FetchQ(scpi_t * context)
{

	int32_t param = 0;
	uint16_t range = 0;
	int32_t search_range = 0;
	scpi_channel_value_t array[MAXCOL*MAXROW] = {0};
	size_t size = 0;
	uint32_t adc_readout32[3] = {0};
	double measurement[3] = {0};
	double tmp_meas = 0;
	uint16_t tmp_range = 0;
	uint8_t index = 0;
	int8_t string[5] = {0};
	uint32_t readout_index = 0;

	size = SCPI_GetChannels(context, array);

	if(!size && (size > MODULE_MAX_CHANNELS))
	{
		return SCPI_RES_ERR;
	}

	for(uint8_t i = 0; i < size; i++)
	{
		index = array[i].row;

		if(bsp.module[index].mounted)
		{
			//TBD
		}
	}

	return SCPI_RES_OK;
}
