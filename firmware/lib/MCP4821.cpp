
#include "MCP4821.hpp"
#include "BSP_SPI1.hpp"

namespace MCP4821
{
    void write(uint16_t value_ui12)
    {
        // limit the input to 12 bits, set gain to 1x, and enable vout
        const uint16_t word_to_write = (value_ui12 & FULL_SCALE) | (1u << 13u) | (1u << 12u);
        BSP::spi1::transmit(word_to_write);
    }
}
