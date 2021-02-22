/*
 * led.c
 *
 *  Created on: Jan 31, 2021
 *      Author: grzegorz
 */


#include "cmsis_os.h"
#include "bsp.h"
#include "main.h"

extern osThreadId_t LEDStatusHandle;
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
			osThreadResume(LEDStatusHandle);

			led_color = GREEN;
			osMessageQueuePut(LEDMessageQueue, &led_color, 0U, 0U);

					}; break;

		case LED_ERROR:
		{
			osThreadResume(LEDStatusHandle);

			led_color = RED;
			osMessageQueuePut(LEDMessageQueue, &led_color, 0U, 0U);

					}; break;

		case LED_BUSY:
		{
						osThreadSuspend(LEDStatusHandle);
						LL_GPIO_ResetOutputPin(LED_BLUE_GPIO_Port, LED_BLUE_Pin);

					}; break;
		}
}
