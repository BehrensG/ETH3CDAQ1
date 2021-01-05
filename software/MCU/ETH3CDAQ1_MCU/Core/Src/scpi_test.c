/*
 * scpi_test.c
 *
 *  Created on: Jan 5, 2021
 *      Author: grzegorz
 */

#include "scpi_def.h"
#include "scpi_test.h"
#include "scpi/scpi.h"

static uint8_t Test_Voltage()
{
	return 0;
}

static uint8_t Test_SDRAM()
{
	return 0;
}

scpi_result_t SCPI_TestVoltageQ(scpi_t * context)
{
	return SCPI_RES_OK;
}

scpi_result_t SCPI_TestSDRAMQ(scpi_t * context)
{
	return SCPI_RES_OK;
}
