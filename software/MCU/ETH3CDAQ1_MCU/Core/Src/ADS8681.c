/*
 * ADS8681.c
 *
 *  Created on: Feb 22, 2021
 *      Author: grzegorz
 */

#include "ADS8681.h"

static HAL_StatusTypeDef ADS868x_WriteMSB(uint8_t cmd, uint8_t reg, uint8_t* data);
static HAL_StatusTypeDef ADS868x_WriteLSB(uint8_t cmd, uint8_t reg, uint8_t* data);

HAL_StatusTypeDef ADS868x_Init()
{

}


static HAL_StatusTypeDef ADS868x_WriteMSB(uint8_t cmd, uint8_t reg, uint8_t* data)
{
	return HAL_OK;
}

static HAL_StatusTypeDef ADS868x_WriteLSB(uint8_t cmd, uint8_t reg, uint8_t* data)
{
	return HAL_OK;
}

void ADS8681_CONV_TIME()
{
    uint32_t startTick = DWT->CYCCNT,
             delayTicks = 9 * (SystemCoreClock/15000000);

    while (DWT->CYCCNT - startTick < delayTicks);
}
