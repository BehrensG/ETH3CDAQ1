/*
 * led.c
 *
 *  Created on: Jan 31, 2021
 *      Author: grzegorz
 */


#include "cmsis_os.h"
#include "bsp.h"
#include "main.h"

extern osThreadId_t LEDTaskHandle;
extern osMessageQueueId_t LEDMessageQueue;

uint8_t led_color;

void LED_Switch(uint8_t LED_state)
{

	LL_GPIO_SetOutputPin(LED_BLUE_GPIO_Port, LED_BLUE_Pin);
	LL_GPIO_SetOutputPin(LED_GREEN_GPIO_Port, LED_GREEN_Pin);
	LL_GPIO_SetOutputPin(LED_RED_GPIO_Port, LED_RED_Pin);

	switch(LED_state)
	{
		case LED_IDLE:
		{
			osThreadResume(LEDTaskHandle);

			led_color = GREEN;
			osMessageQueuePut(LEDMessageQueue, &led_color, 0U, 0U);

					}; break;

		case LED_ERROR:
		{
			osThreadResume(LEDTaskHandle);

			led_color = RED;
			osMessageQueuePut(LEDMessageQueue, &led_color, 0U, 0U);

					}; break;

		case LED_BUSY:
		{
			osThreadSuspend(LEDTaskHandle);
			LL_GPIO_ResetOutputPin(LED_BLUE_GPIO_Port, LED_BLUE_Pin);

					}; break;
		}

		case LED_DEFUALT:
		{
			osThreadResume(LEDTaskHandle);

			led_color = BLUE;
			osMessageQueuePut(LEDMessageQueue, &led_color, 0U, 0U);

					}; break;


}
