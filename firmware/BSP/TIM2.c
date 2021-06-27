/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   TIM2.c provides the implementation for initializing TIM2.
--|
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32F334xx Reference Manual, page 494 (Basic Timers)
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "RCC.h"
#include "stm32l031xx.h"
#include "TIM2.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void TIM2_Init(void)
{
    // enable clock control
    RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;

    // set master mode selection to update TRGO
    TIM2->CR2 |= TIM_CR2_MMS_1;

    // set the frequency to the desired value
    TIM2->PSC = 100u - 1u;
    TIM2->ARR = ((SYSTEM_CORE_CLOCK / 100u) / TIM2_FREQUENCY_Hz)  - 1u;

    // enable the timer
    TIM2->CR1 |= TIM_CR1_CEN;
}

bool TIM2_get_timeout(void)
{
    if (TIM2->SR & TIM_SR_UIF)
    {
        TIM2->SR &= ~TIM_SR_UIF;
        return true;
    }
    return false;
}
