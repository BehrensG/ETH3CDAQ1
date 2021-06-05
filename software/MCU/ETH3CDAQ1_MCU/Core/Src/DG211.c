/*
 * DG211.c
 *
 *  Created on: Feb 27, 2021
 *      Author: grzegorz
 */

#include "DG211.h"

extern unsigned char  shiftRegisters[3];

void DG211_Switch(uint8_t values[])
{
	for(uint8_t x = 0; x < 3; x++)
	{
		shiftRegisters[x] = values[x];
	}

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

}
