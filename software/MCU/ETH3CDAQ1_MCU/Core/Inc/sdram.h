/*
 * sdram.h
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#ifndef INC_SDRAM_H_
#define INC_SDRAM_H_

#include "main.h"
#include "bsp.h"

#define SDRAM_CHx_SAMPLES_MAX 1000000
#define CHANNELS 3

void SDRAM_Init(SDRAM_HandleTypeDef *hsdram, FMC_SDRAM_CommandTypeDef *Command);

#endif /* INC_SDRAM_H_ */
