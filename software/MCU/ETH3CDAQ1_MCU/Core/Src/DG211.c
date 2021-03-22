/*
 * DG211.c
 *
 *  Created on: Feb 27, 2021
 *      Author: grzegorz
 */

#include "main.h"
#include "74HC595.h"
#include "bsp.h"

extern unsigned char  shiftRegisters[3];

void DG211_Switch(uint8_t channel, uint8_t channel_name)
{

	shiftRegisters[channel] = channel_name;

	ShiftRegister74HC595_update();

}

void DG211_ResetAll(void)
{
	shiftRegisters[0] = 0x00;
	shiftRegisters[1] = 0x00;
	shiftRegisters[2] = 0x00;
	ShiftRegister74HC595_update();
}

void DG211_Init(void)
{

	shiftRegisters[0] = 0x00;
	shiftRegisters[1] = 0x00;
	shiftRegisters[2] = 0x00;
	ShiftRegister74HC595_update();
	HAL_Delay(1);
	shiftRegisters[0] = CHx_M_DAC;
	shiftRegisters[1] = CHx_M_DAC;
	shiftRegisters[2] = CHx_M_DAC;
	ShiftRegister74HC595_update();

}
