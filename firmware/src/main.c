
#include "ADC1.h"
#include "lookup_tables.h"
#include "LFO.h"
#include "MCP4822.h"
#include "TIM2.h"

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

            // set the LFO level
            const uint16_t out_val = LFO_get_output(&lfo_1, LFO_WAVE_CROSSFADED) * adc1_raw_input[ADC1_RAW_INPUT_LFO_LEVEL] / ADC1_FULL_SCALE;

            // write the LFO via the DAC
            MCP4822_Write(MCP4822_CHANNEL_A, MCP4822_GAIN_1x, out_val);

            // GPIOA->BSRR |= GPIO_BSRR_BR_6;
        }
    }

    return 0;
}
