/*
 * ADS8681.c
 *
 *  Created on: Feb 22, 2021
 *      Author: grzegorz
 */

#include "ADS8681.h"

double ADS8681_LSB[5] = {0.000375000, 0.000312500, 0.000187500, 0.000156250, 0.000078125};

extern SPI_HandleTypeDef hspi3;

static BSP_StatusTypeDef ADS8681_Set_ID(void);
static BSP_StatusTypeDef ADS8681_Set_Data_Output(void);
static BSP_StatusTypeDef ADS8681_Write_MSB(uint8_t* cmd, uint8_t* reg, uint8_t* data);
static BSP_StatusTypeDef ADS8681_Write_LSB(uint8_t* cmd, uint8_t* reg, uint8_t* data);
static BSP_StatusTypeDef ADS8681_Write_HWORD(uint8_t* cmd, uint8_t* reg, uint16_t* data);
static BSP_StatusTypeDef ADS8681_Read_LSB(uint8_t* data);
static void ADS8681_Convertion_Time(void);


BSP_StatusTypeDef ADS8681_Raw_Data(uint16_t* raw_data)
{
	BSP_StatusTypeDef status;

	uint8_t rx_data[12];

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	ADS8681_Convertion_Time();
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	status = HAL_SPI_Receive(&hspi3, rx_data, 12, 1000);
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	if(BSP_OK != status)
	{
		return status;
	}
	else
	{
		raw_data[0] = (uint16_t)(rx_data[8] << 8) | (uint16_t)rx_data[9];
		raw_data[1] = (uint16_t)(rx_data[4] << 8) | (uint16_t)rx_data[5];
		raw_data[2] = (uint16_t)(rx_data[0] << 8) | (uint16_t)rx_data[1];

		return BSP_OK;
	}

}


BSP_StatusTypeDef ADS8681_Init(void)
{
	BSP_StatusTypeDef status;

	status = ADS8681_Set_ID();

	if(BSP_OK != status)
	{
		return status;
	}

	bsp.adc[0].range = ADS8681_RANGE_3VREF;
	bsp.adc[1].range = ADS8681_RANGE_3VREF;
	bsp.adc[2].range = ADS8681_RANGE_3VREF;

	status = ADS8681_Set_Data_Output();

	return status;
}

static BSP_StatusTypeDef ADS8681_Set_Data_Output(void)
{

	uint8_t cmd[3];
	uint8_t reg[3];
	uint16_t tx_hword[3];

	BSP_StatusTypeDef status;

	cmd[0] = WRITE_HWORD;
	cmd[1] = WRITE_HWORD;
	cmd[2] = WRITE_HWORD;

	reg[0] = DATAOUT_CTL_REG;
	reg[1] = DATAOUT_CTL_REG;
	reg[2] = DATAOUT_CTL_REG;

	tx_hword[0] = 0x7D08;
	tx_hword[1] = 0x7D08;
	tx_hword[2] = 0x7D08;

	status = ADS8681_Write_HWORD(cmd, reg, tx_hword);

	return status;

}


BSP_StatusTypeDef ADS8681_Set_Range(uint8_t range[])
{
	uint8_t cmd[3]={0,0,0};
	uint8_t reg[3]={0,0,0};
	uint8_t tx_data[3]={0,0,0};
	uint8_t rx_data[3]={0,0,0};

	BSP_StatusTypeDef status;

	cmd[0] = WRITE_LSB;
	cmd[1] = WRITE_LSB;
	cmd[2] = WRITE_LSB;

	reg[0] = RANGE_SEL_REG;
	reg[1] = RANGE_SEL_REG;
	reg[2] = RANGE_SEL_REG;

	tx_data[2] = range[2];
	tx_data[1] = range[1];
	tx_data[0] = range[0];

	status = ADS8681_Write_LSB(cmd, reg, tx_data);

	if(BSP_OK != status)
	{
		return status;
	}

	DWT_Delay_us(10);


	return BSP_OK;
}

static BSP_StatusTypeDef ADS8681_Set_ID(void)
{
	uint8_t cmd[3]={0,0,0};
	uint8_t reg[3]={0,0,0};
	uint8_t tx_data[3]={0,0,0};
	uint8_t rx_data[3]={0,0,0};

	BSP_StatusTypeDef status;

	cmd[0] = WRITE_LSB;
	cmd[1] = WRITE_LSB;
	cmd[2] = WRITE_LSB;

	reg[0] = DEVICE_ID_REG + 0x02;
	reg[1] = DEVICE_ID_REG + 0x02;
	reg[2] = DEVICE_ID_REG + 0x02;

	tx_data[2] = ADS8681_ID1;
	tx_data[1] = ADS8681_ID2;
	tx_data[0] = ADS8681_ID3;

	status = ADS8681_Write_LSB(cmd, reg, tx_data);

	if(BSP_OK != status)
	{
		return status;
	}

	DWT_Delay_us(1);

	cmd[0] = READ_BYTE;
	cmd[1] = READ_BYTE;
	cmd[2] = READ_BYTE;

	reg[0] = DEVICE_ID_REG + 0x02;
	reg[1] = DEVICE_ID_REG + 0x02;
	reg[2] = DEVICE_ID_REG + 0x02;

	tx_data[0] = 0x00;
	tx_data[1] = 0x00;
	tx_data[2] = 0x00;

	status = ADS8681_Write_LSB(cmd, reg, tx_data);

	if(BSP_OK != status)
	{
		return status;
	}

	DWT_Delay_us(1);

	status = ADS8681_Read_LSB(rx_data);

	if(BSP_OK != status)
	{
		return status;
	}

	tx_data[2] = ADS8681_ID1;
	tx_data[1] = ADS8681_ID2;
	tx_data[0] = ADS8681_ID3;

	for (uint8_t x = 0; x < 3; x++)
	{
		if(rx_data[x] != tx_data[x])
		{
			return BSP_ADC_CONFIG_ERROR;
		}
	}

	return BSP_OK;
}


static BSP_StatusTypeDef ADS8681_Read_LSB(uint8_t* data)
{

	BSP_StatusTypeDef status;
	uint8_t rx_data[12] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	status = HAL_SPI_Receive(&hspi3, rx_data, 12, 1000);
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	if(BSP_OK != status)
	{
		return status;
	}

	data[0] = rx_data[0];
	data[1] = rx_data[4];
	data[2] = rx_data[8];

	return status;
}

static BSP_StatusTypeDef ADS8681_Write_HWORD(uint8_t* cmd, uint8_t* reg, uint16_t* data)
{

	BSP_StatusTypeDef status;
	uint8_t tx_data[12] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

	tx_data[0] = cmd[0];
	tx_data[1] = reg[0];
	tx_data[2] = (uint8_t)(data[0] >> 8);
	tx_data[3] = (uint8_t)(data[0]&0xFF);

	tx_data[4] = cmd[1];
	tx_data[5] = reg[1];
	tx_data[6] = (uint8_t)(data[1] >> 8);
	tx_data[7] = (uint8_t)(data[1]&0xFF);

	tx_data[8] = cmd[2];
	tx_data[9] = reg[2];
	tx_data[10] = (uint8_t)(data[2] >> 8);
	tx_data[11] = (uint8_t)(data[2]&0xFF);

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	status = HAL_SPI_Transmit(&hspi3, tx_data, 12, 1000);
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	return status;
}

static BSP_StatusTypeDef ADS8681_Write_MSB(uint8_t* cmd, uint8_t* reg, uint8_t* data)
{

	BSP_StatusTypeDef status;
	uint8_t tx_data[12] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

	tx_data[0] = cmd[0];
	tx_data[1] = reg[0];
	tx_data[2] = 0x00;
	tx_data[3] = data[0];

	tx_data[4] = cmd[1];
	tx_data[5] = reg[1];
	tx_data[6] = 0x00;
	tx_data[7] = data[1];

	tx_data[8] = cmd[2];
	tx_data[9] = reg[2];
	tx_data[10] = 0x00;
	tx_data[11] = data[2];

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	status = HAL_SPI_Transmit(&hspi3, tx_data, 12, 1000);
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	return status;
}

static BSP_StatusTypeDef ADS8681_Write_LSB(uint8_t* cmd, uint8_t* reg, uint8_t* data)
{

	BSP_StatusTypeDef status;
	uint8_t tx_data[12] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};

	tx_data[0] = cmd[0];
	tx_data[1] = reg[0];
	tx_data[2] = 0x00;
	tx_data[3] = data[0];

	tx_data[4] = cmd[1];
	tx_data[5] = reg[1];
	tx_data[6] = 0x00;
	tx_data[7] = data[1];

	tx_data[8] = cmd[2];
	tx_data[9] = reg[2];
	tx_data[10] = 0x00;
	tx_data[11] = data[2];

	LL_GPIO_ResetOutputPin(MCU_nCS_GPIO_Port, MCU_nCS_Pin);
	status = HAL_SPI_Transmit(&hspi3, tx_data, 12, 1000);
	LL_GPIO_WriteOutputPort(MCU_nCS_GPIO_Port, MCU_nCS_Pin);

	return status;
}

static void ADS8681_Convertion_Time(void)
{
    uint32_t startTick = DWT->CYCCNT,
             delayTicks = 1 * (SystemCoreClock/15000000);

    while (DWT->CYCCNT - startTick < delayTicks);
}
