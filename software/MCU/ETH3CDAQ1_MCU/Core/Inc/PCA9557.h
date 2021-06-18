/*
 * PCA9557.h
 *
 *  Created on: Feb 1, 2021
 *      Author: grzegorz
 */

#include "ee24.h"
#include "bsp.h"
#include "main.h"

#ifndef INC_PCA9557_H_
#define INC_PCA9557_H_

#define PCA9557_ADDR_MODULE1                0x32
#define PCA9557_ADDR_MODULE2                0x34
#define PCA9557_ADDR_MODULE3                0x36

#define PCA9557_REG_INPUT_PORT              0x00
#define PCA9557_REG_OUTPUT_PORT             0x01
#define PCA9557_REG_POLARITY_INVERSION      0x02
#define PCA9557_REG_CONFIGURATION           0x03


BSP_StatusTypeDef PCA9557_Init();
BSP_StatusTypeDef PCA9557_EEPROM_WP(uint8_t channel, GPIO_PinState state);
BSP_StatusTypeDef PCA9557_Gain_Select(uint8_t channel, uint8_t gain);

#endif /* INC_PCA9557_H_ */
