
#include "lookup_tables.h"
#include "MCP4822.h"
#include "stm32l031xx.h"
#include "SysTick.h"

int main(void)
{

    uint16_t ramp = 0u;

    while (1)
    {
        // toggle PA6
        GPIOA->ODR ^= GPIO_ODR_OD6;

        // write a ramp to one DAC channel
        MCP4822_Write(MCP4822_CHANNEL_A, MCP4822_GAIN_1x, ramp);

        // write a sine wave to the other DAC channel
        MCP4822_Write(MCP4822_CHANNEL_B, MCP4822_GAIN_1x, SINE_LUT[ramp >> 2]);
        ramp++;
        ramp %= MCP4822_FULL_SCALE;

        SysTick_Delay_mSec(1);
    }

    return 0;
}
