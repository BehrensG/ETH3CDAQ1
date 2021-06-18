/*
 * data_format.h
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#ifndef INC_SAMPLES_H_
#define INC_SAMPLES_H_

#include "main.h"

#define TCP_PACKGE_SIZE	20000

char* SAMPLES_TCP_Package(float* meas, uint32_t start, uint32_t size);

#endif /* INC_SAMPLES_H_ */
