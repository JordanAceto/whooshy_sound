
#include "LFO.h"
#include "MCP4822.h"
#include "SysTick.h"

int main(void)
{

    LFO_t lfo;

    // 1kHz sample rate as a simple test using delay to schedule
    LFO_Initialize(&lfo, 1000);

    // set the LFO to 5Hz (5000mHz)
    LFO_set_input(&lfo, LFO_INPUT_TYPE_FREQ_mHz, 5000u);

    while (1)
    {
        LFO_Tick(&lfo);

        MCP4822_Write(MCP4822_CHANNEL_A, MCP4822_GAIN_1x, LFO_get_output(&lfo, LFO_WAVE_TRIANGLE));
        MCP4822_Write(MCP4822_CHANNEL_B, MCP4822_GAIN_1x, LFO_get_output(&lfo, LFO_WAVE_SINE));

        SysTick_Delay_mSec(1);
    }

    return 0;
}
