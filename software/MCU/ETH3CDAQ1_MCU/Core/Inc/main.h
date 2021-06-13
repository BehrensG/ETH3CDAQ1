/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

#include "stm32h7xx_ll_system.h"
#include "stm32h7xx_ll_gpio.h"
#include "stm32h7xx_ll_exti.h"
#include "stm32h7xx_ll_bus.h"
#include "stm32h7xx_ll_cortex.h"
#include "stm32h7xx_ll_rcc.h"
#include "stm32h7xx_ll_utils.h"
#include "stm32h7xx_ll_pwr.h"
#include "stm32h7xx_ll_dma.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define SR_DAT_Pin LL_GPIO_PIN_2
#define SR_DAT_GPIO_Port GPIOE
#define SR_LAT_Pin LL_GPIO_PIN_3
#define SR_LAT_GPIO_Port GPIOE
#define SR_CLK_Pin LL_GPIO_PIN_4
#define SR_CLK_GPIO_Port GPIOE
#define DAC_nSYNC_Pin LL_GPIO_PIN_6
#define DAC_nSYNC_GPIO_Port GPIOF
#define DAC_SCLK_Pin LL_GPIO_PIN_7
#define DAC_SCLK_GPIO_Port GPIOF
#define SPI5_NOT_USED_Pin LL_GPIO_PIN_8
#define SPI5_NOT_USED_GPIO_Port GPIOF
#define DAC_DIN_Pin LL_GPIO_PIN_9
#define DAC_DIN_GPIO_Port GPIOF
#define DAC_LDAC_Pin LL_GPIO_PIN_10
#define DAC_LDAC_GPIO_Port GPIOF
#define TRIG_EN_Pin LL_GPIO_PIN_4
#define TRIG_EN_GPIO_Port GPIOA
#define TRIG_OUT_Pin LL_GPIO_PIN_5
#define TRIG_OUT_GPIO_Port GPIOA
#define TRIG_IN_Pin LL_GPIO_PIN_6
#define TRIG_IN_GPIO_Port GPIOA
#define TRIG_IN_EXTI_IRQn EXTI9_5_IRQn
#define IN_DEFAULT_Pin LL_GPIO_PIN_0
#define IN_DEFAULT_GPIO_Port GPIOB
#define LED_RED_Pin LL_GPIO_PIN_12
#define LED_RED_GPIO_Port GPIOB
#define EEPROM_WP_Pin LL_GPIO_PIN_11
#define EEPROM_WP_GPIO_Port GPIOD
#define EEPROM_SCL_Pin LL_GPIO_PIN_12
#define EEPROM_SCL_GPIO_Port GPIOD
#define EEPROM_SDA_Pin LL_GPIO_PIN_13
#define EEPROM_SDA_GPIO_Port GPIOD
#define LED_GREEN_Pin LL_GPIO_PIN_3
#define LED_GREEN_GPIO_Port GPIOG
#define LED_BLUE_Pin LL_GPIO_PIN_6
#define LED_BLUE_GPIO_Port GPIOG
#define SENS_SDA_Pin LL_GPIO_PIN_9
#define SENS_SDA_GPIO_Port GPIOC
#define SENS_SCL_Pin LL_GPIO_PIN_8
#define SENS_SCL_GPIO_Port GPIOA
#define MCU_nCS_Pin LL_GPIO_PIN_15
#define MCU_nCS_GPIO_Port GPIOA
#define MCU_CLK_Pin LL_GPIO_PIN_10
#define MCU_CLK_GPIO_Port GPIOC
#define MCU_MISO_Pin LL_GPIO_PIN_11
#define MCU_MISO_GPIO_Port GPIOC
#define MCU_MOSI_Pin LL_GPIO_PIN_12
#define MCU_MOSI_GPIO_Port GPIOC
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
