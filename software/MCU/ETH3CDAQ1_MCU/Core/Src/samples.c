/*
 * data_format.c
 *
 *  Created on: Jun 11, 2021
 *      Author: grzegorz
 */

#include <stdio.h>
#include "samples.h"

char* SAMPLES_TCP_Package(float* meas, uint32_t start, uint32_t size)
{
	 int32_t ptr = 0;
	static char tcp_package[TCP_PACKGE_SIZE] = {'\0'};

	for (uint32_t x = 0; x < size; x++)
	{
		ptr += snprintf(tcp_package + ptr, sizeof(tcp_package) - ptr, "%f,", meas[start+x]);
	}

	return tcp_package;
}

