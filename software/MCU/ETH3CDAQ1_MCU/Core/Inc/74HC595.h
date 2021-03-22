#ifndef __74HC595_h__
#define __74HC595_h__

#include "main.h"


#define Number_of_Registers    3

typedef enum
{
  LOW595 = 0,
  HIGH595
}PinState595;

typedef enum
{
  LOW = 0,
  HIGH
}bool_t;


#define CHx_M_IN 	0x02
#define CHx_M_GND	0x04
#define CHx_M_DAC	0x08
#define CHx_LPF		0x10


void SerialDataPinSet(PinState595 state);
void ClockPinSet(PinState595 state);
void LatchPinSet(PinState595 state);
void ShiftRegister74HC595_clear(void);
void ShiftRegister74HC595_setAll(bool_t val);
void ShiftRegister74HC595_setPin(int index, bool_t val);
void ShiftRegister74HC595_update(void);
void ShiftRegister74HC595_init(void);

#endif
