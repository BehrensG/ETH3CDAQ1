/*
 * bsp.c
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#include "bsp.h"
#include "ADS8681.h"

static void BSP_Init_Common()
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

	bsp.trigger.delay = 0;
	bsp.trigger.in_slope = POS;
	bsp.trigger.out_slope = POS;
	bsp.trigger.source = IMM;

}

BSP_StatusTypeDef BSP_Init()
{
	BSP_StatusTypeDef eeprom_status;

	BSP_Init_Common();

	if(MCU_DEFAULT_ON == ((LL_GPIO_ReadInputPort(MCU_DEFAULT_GPIO_Port))& (1 << MCU_DEFAULT_Pin)))
	{
		BSP_InitStaticData(&default_board_static, &board_static);
		bsp.default_cfg = 1;
	}
	else
	{

		eeprom_status = EEPROM_Status();

		switch (eeprom_status)
		{
			case BSP_EEPROM_EMPTY: eeprom_status = EEPROM_Write(&default_board_static, STRUCT_SIZE);
			case BSP_OK: eeprom_status = EEPROM_Read(&board_static, STRUCT_SIZE); board_current.default_cfg = 0; break;
			default: BSP_InitStaticData(&default_board_static, &board_static); break;
		}

	}

	BSP_InitCurrentData(&board_current);
	return eeprom_status;
}
