
#include "BSP_ADC1.hpp"
#include "stm32l031xx.h"

namespace BSP::adc1
{
    /** @brief buffer for the raw converted values, filled via DMA */
    static volatile uint16_t raw_input[BSP::adc1::NUM_INPUTS];

    uint32_t* getPtrToRawInputArray(void)
    {
        return (uint32_t*)raw_input;
    }

    void init()
    {
        // allow clock access
        RCC->APB2ENR |= RCC_APB2ENR_ADC1EN;

        // continuous DMA mode
        ADC1->CFGR1 = ADC_CFGR1_CONT | ADC_CFGR1_DMACFG | ADC_CFGR1_DMAEN;

        // select the channels to convert
        ADC1->CHSELR = ADC_CHSELR_CHSEL2 | ADC_CHSELR_CHSEL1 | ADC_CHSELR_CHSEL0;

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

    uint16_t getInput_ui12(Raw_Input input)
    {
        return raw_input[input];
    }
}