/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   main.c provides the main application entry point, called from the assembly
--|   startup routine.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   None
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "ADC1.h"
#include "lookup_tables.h"
#include "LFO.h"
#include "MCP4821.h"
#include "TIM2.h"

/*
--|----------------------------------------------------------------------------|
--| PRIVATE FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    main

Function Description:
    The main application.

Parameters:
    None

Returns:
    int (never reached)

Assumptions/Limitations:
    Assumed that main will be called from the assembly startup routine after all
    system initialization is complete. Do not manually call this function.
    This function enters an infinite loop that is not expected to terminate.
------------------------------------------------------------------------------*/
int main(void);

/*
--|----------------------------------------------------------------------------|
--| PRIVATE FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

int main(void)
{
    LFO_t lfo_1;

    // use timer 2 as the sample-rate clock
    LFO_Initialize(&lfo_1, TIM2_FREQUENCY_Hz);

    while (1)
    {
        if (TIM2_get_timeout())
        {
            // GPIOA->BSRR |= GPIO_BSRR_BS_6;

            LFO_Tick(&lfo_1);

            // set the LFO frequency
            LFO_set_input(&lfo_1, LFO_INPUT_TYPE_FREQ_mHz, EXPO_MAPPING_LUT_mHz[adc1_raw_input[ADC1_RAW_INPUT_LFO_FREQ] >> 2u]);

            // set the LFO crossfaded waveshape
            LFO_set_input(&lfo_1, LFO_INPUT_TYPE_WAVE_SCAN, adc1_raw_input[ADC1_RAW_INPUT_LFO_SHAPE] << 4u);

            // the raw bipolar crossfaded LFO signal
            const int16_t raw_LFO = LFO_get_output(&lfo_1, LFO_WAVE_CROSSFADED);

            // the LFO signal scaled for the DAC, it now takes up 12 bits and is non-negative
            const uint16_t scaled_LFO = (raw_LFO * adc1_raw_input[ADC1_RAW_INPUT_LFO_LEVEL] / (int16_t)ADC1_FULL_SCALE) + LFO_OUTPUT_MAX_VAL;

            // write the unsigned LFO signal via the DAC
            MCP4821_Write(MCP4821_GAIN_1x, scaled_LFO);

            // GPIOA->BSRR |= GPIO_BSRR_BR_6;
        }
    }

    return 0;
}

