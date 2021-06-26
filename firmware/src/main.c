
#include "LFO.h"
#include "MCP4822.h"
#include "SysTick.h"

int main(void)
{

    LFO_t lfo_1;
    LFO_t lfo_2;

    // 1kHz sample rate as a simple test using delay to schedule
    LFO_Initialize(&lfo_1, 1000);
    LFO_Initialize(&lfo_2, 1000);

    // set the main LFO to medium fast
    LFO_set_input(&lfo_1, LFO_INPUT_TYPE_FREQ_mHz, 10000u);

    // set the aux LFO to quite slow
    LFO_set_input(&lfo_2, LFO_INPUT_TYPE_FREQ_mHz, 10u);

    while (1)
    {
        LFO_Tick(&lfo_1);
        LFO_Tick(&lfo_2);

        // use the slower LFO to morph the wave scanner of the faster one
        LFO_set_input(&lfo_1, LFO_INPUT_TYPE_WAVE_SCAN, LFO_get_output(&lfo_2, LFO_WAVE_TRIANGLE) << 4u);

        MCP4822_Write(MCP4822_CHANNEL_A, MCP4822_GAIN_1x, LFO_get_output(&lfo_1, LFO_WAVE_SINE));
        MCP4822_Write(MCP4822_CHANNEL_B, MCP4822_GAIN_1x, LFO_get_output(&lfo_1, LFO_WAVE_CROSSFADED));

        SysTick_Delay_mSec(1);
    }

    return 0;
}
