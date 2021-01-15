/*-
 * Copyright (c) 2012-2013 Jan Breuer,
 *
 * All Rights Reserved
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHORS ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
 * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
 * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file   scpi-def.c
 * @date   Thu Nov 15 10:58:45 UTC 2012
 *
 * @brief  SCPI parser test
 *
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "scpi_def.h"
#include "scpi/scpi.h"
#include "main.h"
#include "cmsis_os.h"
#include "scpi_system.h"
#include "scpi_test.h"
#include "bsp.h"

extern I2C_HandleTypeDef hi2c4;
extern SPI_HandleTypeDef hspi5;

static scpi_result_t TEST_TSQ(scpi_t * context)
{
	HAL_StatusTypeDef spi_status;
	uint8_t tx_data[3] = {0x10, 0x15, 0xFF};
	HAL_GPIO_WritePin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin, 0);
	//HAL_GPIO_WritePin(DAC_LDAC_GPIO_Port, DAC_LDAC_Pin, 0);
	spi_status = HAL_SPI_Transmit(&hspi5, tx_data, 3, 1000);
	HAL_GPIO_WritePin(DAC_nSYNC_GPIO_Port, DAC_nSYNC_Pin, 1);
	//HAL_GPIO_WritePin(DAC_LDAC_GPIO_Port, DAC_LDAC_Pin, 1);
	//HAL_GPIO_WritePin(DAC_LDAC_GPIO_Port, DAC_LDAC_Pin, 0);

	return SCPI_RES_OK;
}


/**
 * @brief
 * parses lists
 * channel numbers > 0.
 * no checks yet.
 * valid: (@1), (@3!1:1!3), ...
 * (@1!1:3!2) would be 1!1, 1!2, 2!1, 2!2, 3!1, 3!2.
 * (@3!1:1!3) would be 3!1, 3!2, 3!3, 2!1, 2!2, 2!3, ... 1!3.
 *
 * @param channel_list channel list, compare to SCPI99 Vol 1 Ch. 8.3.2
 */

/**
 * Reimplement IEEE488.2 *TST?
 *
 * Result should be 0 if everything is ok
 * Result should be 1 if something goes wrong
 *
 * Return SCPI_RES_OK
 */
static scpi_result_t My_CoreTstQ(scpi_t * context) {

    SCPI_ResultInt32(context, 0);

    return SCPI_RES_OK;
}

const scpi_command_t scpi_commands[] = {
    /* IEEE Mandated Commands (SCPI std V1999.0 4.1.1) */
    { .pattern = "*CLS", .callback = SCPI_CoreCls,},
    { .pattern = "*ESE", .callback = SCPI_CoreEse,},
    { .pattern = "*ESE?", .callback = SCPI_CoreEseQ,},
    { .pattern = "*ESR?", .callback = SCPI_CoreEsrQ,},
    { .pattern = "*IDN?", .callback = SCPI_CoreIdnQ,},
    { .pattern = "*OPC", .callback = SCPI_CoreOpc,},
    { .pattern = "*OPC?", .callback = SCPI_CoreOpcQ,},
    { .pattern = "*RST", .callback = SCPI_CoreRst,},
    { .pattern = "*SRE", .callback = SCPI_CoreSre,},
    { .pattern = "*SRE?", .callback = SCPI_CoreSreQ,},
    { .pattern = "*STB?", .callback = SCPI_CoreStbQ,},
    { .pattern = "*TST?", .callback = My_CoreTstQ,},
    { .pattern = "*WAI", .callback = SCPI_CoreWai,},

    {.pattern = "STATus:QUEStionable[:EVENt]?", .callback = SCPI_StatusQuestionableEventQ,},
    /* {.pattern = "STATus:QUEStionable:CONDition?", .callback = scpi_stub_callback,}, */
    {.pattern = "STATus:QUEStionable:ENABle", .callback = SCPI_StatusQuestionableEnable,},
    {.pattern = "STATus:QUEStionable:ENABle?", .callback = SCPI_StatusQuestionableEnableQ,},

    {.pattern = "STATus:PRESet", .callback = SCPI_StatusPreset,},

    /* Required SCPI commands (SCPI std V1999.0 4.2.1) */
    {.pattern = "SYSTem:ERRor[:NEXT]?", .callback = SCPI_SystemErrorNextQ,},
    {.pattern = "SYSTem:ERRor:COUNt?", .callback = SCPI_SystemErrorCountQ,},
    {.pattern = "SYSTem:VERSion?", .callback = SCPI_SystemVersionQ,},

	{.pattern = "SYSTem:COMMunicate:LAN:IPADdress", .callback = SCPI_SystemCommunicateLANIPAddress,},
	{.pattern = "SYSTem:COMMunicate:LAN:IPADdress?", .callback = SCPI_SystemCommunicateLANIPAddressQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:SMASk", .callback = SCPI_SystemCommunicateLANIPSmask,},
	{.pattern = "SYSTem:COMMunicate:LAN:SMASk?", .callback = SCPI_SystemCommunicateLANIPSmaskQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:GATEway", .callback = SCPI_SystemCommunicateLANGateway,},
	{.pattern = "SYSTem:COMMunicate:LAN:GATEway?", .callback = SCPI_SystemCommunicateLANGatewayQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:MAC", .callback = SCPI_SystemCommunicateLANMAC,},
	{.pattern = "SYSTem:COMMunicate:LAN:MAC?", .callback = SCPI_SystemCommunicateLANMACQ,},
	{.pattern = "SYSTem:COMMunicate:LAN:PORT", .callback = SCPI_SystemCommunicateLANPort,},
	{.pattern = "SYSTem:COMMunicate:LAN:PORT?", .callback = SCPI_SystemCommunicateLANPortQ,},
	{.pattern = "SYSTem:COMMunication:LAN:UPDate", .callback = SCPI_SystemCommunicationLanUpdate,},
	{.pattern = "SYSTem:SERVice:EEPROM", .callback = SCPI_SystemServiceEEPROM,},
	{.pattern = "SYSTem:SERVice:ID", .callback = SCPI_SystemServiceID,},
	{.pattern = "SYSTem:SECure:STATe", .callback = SCPI_SystemSecureState,},
	{.pattern = "SYSTem:SECure:STATe?", .callback = SCPI_SystemSecureStateQ,},
	{.pattern = "SYSTem:TEMPerature?", .callback = SCPI_SystemTemperatureQ,},
	{.pattern = "SYSTem:TEMPerature:UNIT", .callback = SCPI_SystemTemperatureUnit,},
	{.pattern = "SYSTem:TEMPerature:UNIT?", .callback = SCPI_SystemTemperatureUnitQ,},
	{.pattern = "SYSTem:HUMIdity?", .callback = SCPI_SystemHumidityQ,},

	{.pattern = "TEST:VOLTage?", .callback = SCPI_TestVoltageQ,},
	{.pattern = "TEST:SDRAM?", .callback = SCPI_TestSDRAMQ,},

	{.pattern = "TS?", .callback = TEST_TSQ,},

		SCPI_CMD_LIST_END
};

scpi_interface_t scpi_interface = {
    .error = SCPI_Error,
    .write = SCPI_Write,
    .control = SCPI_Control,
    .flush = SCPI_Flush,
    .reset = SCPI_Reset,
};

char scpi_input_buffer[SCPI_INPUT_BUFFER_LENGTH];
scpi_error_t scpi_error_queue_data[SCPI_ERROR_QUEUE_SIZE];

scpi_t scpi_context;
