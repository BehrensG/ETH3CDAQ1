#ifndef	_EE24CONFIG_H
#define	_EE24CONFIG_H

#include "main.h"

extern I2C_HandleTypeDef hi2c4;
#define		_EEPROM_SIZE_KBIT			2
#define		_EEPROM_USE_FREERTOS        1
#define		_EEPROM_USE_WP_PIN          0

#define EEPROM_WRITE_DONE 0x44U
#define EEPROM_END 256U

#if (_EEPROM_USE_WP_PIN==1)
#define		_EEPROM_WP_GPIO				EEPROM_WP_GPIO_Port
#define		_EEPROM_WP_PIN				EEPROM_WP_Pin
#endif

#endif

