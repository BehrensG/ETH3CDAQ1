/*
 * bsp.c
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#include "bsp.h"
#include "ADS8681.h"

void BSP_Init()
{

	bsp.samples.count = 1;
	bsp.samples.timer = 1;

	bsp.sdram[0].index = 0;
	bsp.sdram[0].size = 0;
	bsp.sdram[1].index = 0;
	bsp.sdram[1].size = 0;
	bsp.sdram[2].index = 0;
	bsp.sdram[2].size = 0;

	bsp.adc[0].zero_offset = 0.0;
	bsp.adc[0].range = ADS8681_RANGE_3VREF;
	bsp.adc[1].zero_offset = 0.0;
	bsp.adc[1].range = ADS8681_RANGE_3VREF;
	bsp.adc[2].zero_offset = 0.0;
	bsp.adc[2].range = ADS8681_RANGE_3VREF;

}
