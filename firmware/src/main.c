
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

        // write phase shifted ramps to the DAC channels
        MCP4822_Write(MCP4822_CHANNEL_A, MCP4822_GAIN_1x, ramp);
        MCP4822_Write(MCP4822_CHANNEL_B, MCP4822_GAIN_1x, ramp + (1u << 11));
        ramp++;
        ramp %= 0xFFFu;

        SysTick_Delay_mSec(1);
    }

    return 0;
}
