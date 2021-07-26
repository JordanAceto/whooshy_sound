
#pragma once

#include <stdint.h>

/** @brief onboard STM32 analog to digital converter */
namespace BSP::adc1
{
    /** @brief the number of bits in the ADC */
    const int NUM_BITS = 12;

    /** @brief the maximum value of the ADC*/
    const int FULL_SCALE = (1 << NUM_BITS) - 1;

    /** @brief enumeration of the ADC input channels */
    enum Raw_Input
    {
        LFO_LEVEL,
        LFO_FREQ,
        LFO_SHAPE,

        NUM_INPUTS
    };

    /**
     * @brief Initialize the ADC.
     *
     * The ADC reads the signals continuously and stores the values via DMA.
     */
    void init(void);

    /**
     * @brief Get the specified input channel.
     *
     * ADC conversions are 12 bits wide.
     *
     * @param input the input channel to get
     * @return uint16_t the converted analog value of the specified channel
     */
    uint16_t getInput_ui12(Raw_Input input);

    /**
     * @brief Get a pointer to the raw input buffer, used only by the DMA controller.
     *
     * @return uint32_t* pointer to the buffer holding the analog conversions.
     */
    uint32_t* getPtrToRawInputArray(void);
}
