/*
 * dac8564.h
 *
 *  Created on: Jan 19, 2021
 *      Author: grzegorz
 */

#ifndef INC_DAC8564_H_
#define INC_DAC8564_H_

#include "main.h"

#define DAC8564_LOAD		0x10
#define DAC8564_DAC_A		0x00
#define DAC8564_DAC_B		0x02
#define DAC8564_DAC_C		0x04
#define DAC8564_DAC_D		0x06

#define DAC8564_VOLT_LSB	0.00003814697265625
#define DAC8564_VOLT_GAIN	8
#define DAC8564_VOLT_OFFSET	10


HAL_StatusTypeDef DAC8564_Set_Voltage(uint8_t channel, double voltage);

#endif /* INC_DAC8564_H_ */
