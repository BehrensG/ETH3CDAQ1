/*
 * sdram.c
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */
#include "sdram.h"

SDRAM_HandleTypeDef hsdram2;
__attribute__((section(".xram"))) float global_sdram_meas[CHANNELS][SDRAM_CHx_SAMPLES_MAX];


void SDRAM_Add_Meas(uint8_t channel, float* data, uint32_t size)
{
	for (uint32_t x = 0; x < size; x++)
	{
		if(bsp.sdram[channel].size > SDRAM_CHx_SAMPLES_MAX)
		{
			bsp.sdram[channel].size = 0;
		}

		global_sdram_meas[channel][bsp.sdram[channel].size++] = data[x];

	}
}

void SDRAM_Reset (uint8_t channel)
{
	bsp.sdram[channel].size = 0;
	bsp.sdram[channel].index = 0;

	for(uint32_t x = 0; x < SDRAM_CHx_SAMPLES_MAX; x++)
	{
		global_sdram_meas[channel][x] = (float)(0.0);
	}

}

void SDRAM_Init(SDRAM_HandleTypeDef *hsdram, FMC_SDRAM_CommandTypeDef *Command)
{

	__IO uint32_t tmpmrd = 0;

	/* Step 3:  Configure a clock configuration enable command */

	Command->CommandMode = FMC_SDRAM_CMD_CLK_ENABLE;

	Command->CommandTarget = FMC_SDRAM_CMD_TARGET_BANK2;

	Command->AutoRefreshNumber = 1;

	Command->ModeRegisterDefinition = 0;

	/* Send the command */

	HAL_SDRAM_SendCommand(hsdram, Command, 0x1000);

	/* Step 4: Insert 10 ms delay */

	HAL_Delay(100);

	/* Step 5: Configure a PALL (precharge all) command */

	Command->CommandMode = FMC_SDRAM_CMD_PALL;

	Command->CommandTarget = FMC_SDRAM_CMD_TARGET_BANK2;

	Command->AutoRefreshNumber = 1;

	Command->ModeRegisterDefinition = 0;

	/* Send the command */

	HAL_SDRAM_SendCommand(hsdram, Command, 0x1000);

	HAL_Delay(10);

	/* Step 6 : Configure a Auto-Refresh command */

	Command->CommandMode = FMC_SDRAM_CMD_AUTOREFRESH_MODE;

	Command->CommandTarget = FMC_SDRAM_CMD_TARGET_BANK2;

	Command->AutoRefreshNumber = 1;

	Command->ModeRegisterDefinition = 0;

	/* Send the command */

	HAL_SDRAM_SendCommand(hsdram, Command, 0x1000);
	HAL_Delay(10);

	/* Step 7: Program the external memory mode register */

	// Write burst: single location access
	// Standard operation, CAS latency: 3, Sequential
	// Burst length: 2
	tmpmrd = (uint32_t) 0x00000231;

	Command->CommandMode = FMC_SDRAM_CMD_LOAD_MODE;

	Command->CommandTarget = FMC_SDRAM_CMD_TARGET_BANK2;

	Command->AutoRefreshNumber = 2;

	Command->ModeRegisterDefinition = tmpmrd;

	/* Send the command */

	HAL_SDRAM_SendCommand(hsdram, Command, 0x1000);
	HAL_Delay(10);

	/* Step 8: Set the refresh rate counter */

	// refresh rate = refresh period / number of rows
	// refresh rate = 64ms / 8192 = 15.62us
	// refresh count = (refresh rate x SDRAM clock frequency) - 20
	// refresh count = 7.18us x 180MHz - 20 = 1272
	HAL_SDRAM_ProgramRefreshRate(hsdram, 1272);

}
