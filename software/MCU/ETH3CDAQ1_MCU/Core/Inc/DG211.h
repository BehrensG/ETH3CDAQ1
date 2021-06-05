/*
 * DG211.h
 *
 *  Created on: Feb 27, 2021
 *      Author: grzegorz
 */

#ifndef INC_DG211_H_
#define INC_DG211_H_

#include "main.h"
#include "74HC595.h"
#include "bsp.h"

void DG211_Switch(uint8_t values[]);
void DG211_ResetAll(void);
void DG211_Init(void);

#endif /* INC_DG211_H_ */
