/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   DMA.h provides the interface for initializing the Direct Memory Access
--|   controller.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32F334xx Reference Manual, page 241
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "ADC1.h"
#include "stm32l031xx.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void DMA_Init(void)
{
    // enable DMA clock access
    RCC->AHBENR |= RCC_AHBENR_DMA1EN;

    // set circular mode, mem & periph size to 16 bits, increment memory 
    DMA1_Channel1->CCR |= DMA_CCR_CIRC | DMA_CCR_MSIZE_0 | DMA_CCR_PSIZE_0 | DMA_CCR_MINC;

    // DMA transfer length
    DMA1_Channel1->CNDTR = NUM_ADC1_RAW_INPUTS;

    // set peripheral address to ADC1 Data Register
    DMA1_Channel1->CPAR = (uint32_t)&(ADC1->DR);

    // set memory address to the array of raw adc readings
    DMA1_Channel1->CMAR = (uint32_t)adc1_raw_input;

    // enable DMA1 channel 1
    DMA1_Channel1->CCR |= DMA_CCR_EN;
}
