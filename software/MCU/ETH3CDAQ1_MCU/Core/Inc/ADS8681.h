/*
 * ADS8681.h
 *
 *  Created on: Feb 22, 2021
 *      Author: grzegorz
 */

#ifndef INC_ADS8681_H_
#define INC_ADS8681_H_

#include "main.h"
#include "bsp.h"

#define DEVICE_ID_REG 		0x00
#define RST_PWRCTL_REG		0x04
#define SDI_CTL_REG			0x08
#define SDO_CTL_REG			0x0C
#define DATAOUT_CTL_REG		0x10
#define RANGE_SEL_REG		0x14
#define ALARM_REG			0x20
#define ALARM_H_TH_REG		0x24
#define ALARM_L_TH_REG		0x28

#define CLEAR_HWORD			0xC0
#define READ_HWORD			0xC8
#define READ_BYTE			0x48
#define WRITE_HWORD			0xD0
#define WRITE_MSB			0xD2
#define WRITE_LSB			0xD4
#define SET_HWORD			0xD8

#define ADS8681_ID1			0x01
#define ADS8681_ID2			0x02
#define ADS8681_ID3			0x03
#define ADS8681_EXT_VREF 	4.096

#define ADS868x_VREF


BSP_StatusTypeDef ADS868x_Init(void);
BSP_StatusTypeDef ADS8681_Raw_Data(uint16_t* raw_data);

#endif /* INC_ADS8681_H_ */
