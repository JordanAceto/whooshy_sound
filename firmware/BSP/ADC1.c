/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   ADC.c provides the implementation for initializing the ADC.
--|   
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 278 (ADC)
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

void ADC1_Init(void)
{
    // allow clock access
    RCC->APB2ENR |= RCC_APB2ENR_ADC1EN;

    // continuous DMA mode
    ADC1->CFGR1 = ADC_CFGR1_CONT | ADC_CFGR1_DMACFG | ADC_CFGR1_DMAEN;

    // select the channels to convert
    ADC1->CHSELR = ADC_CHSELR_CHSEL3 | ADC_CHSELR_CHSEL2 | ADC_CHSELR_CHSEL1;

    // sampling mode = 160.5 ADC clock cycles
    ADC1->SMPR |= ADC_SMPR_SMP_0 | ADC_SMPR_SMP_1 | ADC_SMPR_SMP_2;

    // start the calibration
    ADC1->CR |= ADC_CR_ADCAL;

    while (ADC1->CR & ADC_CR_ADCAL)
    {
        // wait for the calibration to complete
    }

    // enable ADC1
    ADC1->CR |= ADC_CR_ADEN;

    while (!(ADC1->ISR & ADC_ISR_ADRDY))
    {
        // wait until the ADC is ready
    }
    
    // start the ADC
    ADC1->CR |= ADC_CR_ADSTART;
}
