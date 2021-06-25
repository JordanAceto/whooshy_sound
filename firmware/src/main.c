
#include "stm32l031xx.h"
#include "SysTick.h"

int main(void)
{

    while (1)
    {
        // toggle PA6 as a "hello world"
        GPIOA->ODR ^= GPIO_ODR_OD6;
        SysTick_Delay_mSec(100);
    }

    return 0;
}
