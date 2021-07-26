#pragma once

#include <stdint.h>

/** @brief 12 bit SPI DAC */
namespace MCP4821
{
    /** @brief the number of bits in the DAC */
    const int NUM_BITS = 12;

    /** @brief the maximum value of the DAC */
    const int FULL_SCALE = (1 << NUM_BITS) - 1;

    /**
     * @brief Write the given 12 bit value to the DAC.
     *
     * @param value_ui12 the 12 bit value to write, bits above 12 will be ignored
     */
    void write(uint16_t value_ui12);
}
