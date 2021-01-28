/*
 * bsp.h
 *
 *  Created on: Jan 2, 2021
 *      Author: grzegorz
 */

#ifndef INC_BSP_H_
#define INC_BSP_H_

#include "stm32h7xx_hal.h"
#include "scpi/scpi.h"

/*************************************** SCPI ***************************************/

#define SCPI_MANUFACTURER_STRING_LENGTH 16
#define SCPI_DEVICE_STRING_LENGTH 16
#define SCPI_SERIALNUMBER_STRING_LENGTH 16
#define SCPI_SOFTWAREVERSION_STRING_LENGTH 16
#define HOSTNAME_LENGTH 20
#define PASSWORD_LENGTH 16
#define PASSWORD "ETH3CDAQ1"

/*************************************** ETHERNET ***************************************/

#define IP_ADDRESS_0 192
#define IP_ADDRESS_1 168
#define IP_ADDRESS_2 0
#define IP_ADDRESS_3 123

#define NETMASK_ADDRESS_0 255
#define NETMASK_ADDRESS_1 255
#define NETMASK_ADDRESS_2 255
#define NETMASK_ADDRESS_3 0

#define GATEWAY_ADDRESS_0 192
#define GATEWAY_ADDRESS_1 168
#define GATEWAY_ADDRESS_2 0
#define GATEWAY_ADDRESS_3 1

#define MAC_0 0x00
#define MAC_1 0x80
#define MAC_2 0xE1
#define MAC_3 0x00
#define MAC_4 0x00
#define MAC_5 0x00

#define TCPIP_DEFAULT_PORT 2000

/*************************************** MCU ***************************************/

#define MCU_DEFAULT_OFF 0
#define MCU_DEFAULT_ON 1

#define	SR_INVERT_MASK	0xFF

#define MCU_SERVICE_SECURITY_OFF 0
#define MCU_SERVICE_SECURITY_ON 1

#define MODULE_MAX_NUMBER 24
#define EEPROM_CFG_SIZE 247

#define SDRAM_CHx_SAMPLES_MAX 1000000
#define CHANNELS 3

/*************************************** TLA2528 ***************************************/

#define TLA2528_ADDRESS 			(0x17<<1)
#define TLA2528_SINGLE_REG_READ 	0x10
#define TLA2528_SINGLE_REG_WRITE 	0x08
#define TLA2528_SET_BIT		 		0x18
#define TLA2528_CLEAR_BIT			0x20
#define TLA2528_BLOCK_READ	 		0x30
#define TLA2528_BLOCK_WRITE	 		0x28
#define TLA2528_READ				0x01
#define TLA2528_OSR_CFG_REG			0x03
#define TLA2528_OSR_CHANNEL_SEL_REG	0x11
#define TLA2528_OSR_16				0x04

#define TLA2528_VOLT_LSB			0.0000763

/*************************************** I2C EEPROM ***************************************/

#define EEPROM_BASE					0xA0
#define EEPROM_CHANNEL1				0xA1
#define EEPROM_CHANNEL2				0xA2
#define EEPROM_CHANNEL3				0xA3

/*************************************** MCU ***************************************/

#define MCU_DEFAULT_OFF 0
#define MCU_DEFAULT_ON 1

#define	SR_INVERT_MASK	0xFF

#define MCU_SERVICE_SECURITY_OFF 0
#define MCU_SERVICE_SECURITY_ON 1

#define MODULE_MAX_NUMBER 24
#define EEPROM_CFG_SIZE 247

#define SDRAM_CHx_SAMPLES_MAX 1000000
#define CHANNELS 3



#pragma pack(push, 1)

// size 64
struct bsp_scpi_info
{
	int8_t manufacturer[SCPI_MANUFACTURER_STRING_LENGTH];
	int8_t device[SCPI_DEVICE_STRING_LENGTH];
	int8_t serial_number[SCPI_SERIALNUMBER_STRING_LENGTH];
	int8_t software_version[SCPI_SOFTWAREVERSION_STRING_LENGTH];

};


// size 20
struct bsp_ip4_lan
{
	uint8_t ip[4];
	uint8_t netmask[4];
	uint8_t gateway[4];
	uint8_t MAC[6];
	uint16_t port;
};


struct bsp_adc_calib
{
	float gain;
	float offset;
	uint8_t valid;
};

struct module_eeporm_list
{
	uint32_t serial;
	uint8_t channel;
};

typedef struct bsp_ip4_lan bsp_ip4_lan_t;
typedef struct bsp_scpi_info bsp_scpi_info_t;
typedef struct bsp_adc_calib bsp_adc_calib_t;
typedef struct module_eeporm_list module_eeporm_list_t;

union bsp_eeprom_union
{
	struct data
	{
		// Size 20
		bsp_ip4_lan_t ip4;
		// Size 64
		bsp_scpi_info_t info;
		// Size 24
		bsp_adc_calib_t calibration[3];
		// Size 19
		int8_t password[PASSWORD_LENGTH];
		// Known module serial numbers. Will be updated when the calibration of the modules was done.
		// Size 120
		module_eeporm_list_t modules[MODULE_MAX_NUMBER];
	}structure;
	uint8_t bytes[EEPROM_CFG_SIZE];
};

#pragma pack(pop)

// size 17
struct bsp_security
{
	scpi_bool_t status;
};

struct bsp_trigger
{

	uint8_t slope;
	double delay;
	uint8_t source;
};

struct bsp_temperature
{
	uint8_t unit;
};

typedef union bsp_eeprom_union bsp_eeprom_union_t;
typedef struct bsp_trigger bsp_trigger_t;
typedef struct bsp_security bsp_security_t;
typedef struct bsp_temperature bsp_temperature_t;

struct _bsp
{
	bsp_eeprom_union_t eeprom;
	bsp_trigger_t trigger;
	bsp_security_t security;
	bsp_temperature_t temperature;
	bsp_ip4_lan_t ip4;
	uint8_t default_cfg;

}bsp;

#endif /* INC_BSP_H_ */
