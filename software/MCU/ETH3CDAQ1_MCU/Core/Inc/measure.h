/*
 * measure.h
 *
 *  Created on: Jun 5, 2021
 *      Author: grzegorz
 */

#ifndef INC_MEASURE_H_
#define INC_MEASURE_H_

#include "main.h"
#include "bsp.h"
#include "ADS8681.h"
#include "DG211.h"
#include "cmsis_os.h"

BSP_StatusTypeDef MEAS_GetValues(float values[]);
BSP_StatusTypeDef MEAS_ZeroOffset();
BSP_StatusTypeDef MEAS_MeasToSDRAM(uint32_t samples);

#endif /* INC_MEASURE_H_ */
