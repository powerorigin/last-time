#ifndef LED_H
#define LED_H
#include "key.h"

#define LED1 1
#define LED2 2
#define LED3 3
#define LED4 4
#define LED5 5
#define LED6 6
#define LED7 7
#define LED8 8
#define LED9 9
#define LED10 10
#define ALLOFF 0

void Led_Init();
void led_state();
void Led_On(u8 bits);

#endif /* LED_H */