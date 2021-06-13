/*
 * eeprom.h
 *
 *  Created on: Jun 13, 2021
 *      Author: grzegorz
 */

#ifndef INC_EEPROM_H_
#define INC_EEPROM_H_

#include "main.h"
#include "ee24.h"
#include "bsp.h"


#define EEPROM_ADDRESS 0xA0U
#define EEPROM_SIZE 0x3FFU
#define EEPROM_WRITE_DONE 0x44U
#define EEPROM_END 1023U


#define EEPROM_B0 0x02U
#define EEPROM_B1 0x04U
#define EEPROM_BLOCK_COUNT 4U
#define EEPROM_BLOCK_SIZE 256U

BSP_StatusTypeDef EEPROM_Reset(void);
BSP_StatusTypeDef EEPROM_Write(bsp_eeprom_union_t *union_data, size_t size);
BSP_StatusTypeDef EEPROM_Read(bsp_eeprom_union_t *union_data, size_t size);
BSP_StatusTypeDef EEPROM_Status(void);


#endif /* INC_EEPROM_H_ */
