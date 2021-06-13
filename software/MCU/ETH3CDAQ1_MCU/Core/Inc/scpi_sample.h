/*
 * scpi_sample.h
 *
 *  Created on: Jun 13, 2021
 *      Author: grzegorz
 */

#ifndef INC_SCPI_SAMPLE_H_
#define INC_SCPI_SAMPLE_H_

#include "scpi/scpi.h"

scpi_result_t SCPI_SampleCount(scpi_t * context);
scpi_result_t SCPI_SampleCountQ(scpi_t * context);
scpi_result_t SCPI_SampleTimer(scpi_t * context);
scpi_result_t SCPI_SampleTimerQ(scpi_t * context);

#endif /* INC_SCPI_SAMPLE_H_ */
