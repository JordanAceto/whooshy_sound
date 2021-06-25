/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   MCP4822.c provides the implementation for using MCP4822 DACs.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   mcp4822_datasheet.pdf
--|
--|----------------------------------------------------------------------------|
*/

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "MCP4822.h"
#include "SPI1.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION DEFINITIONS
--|----------------------------------------------------------------------------|
*/

void MCP4822_Write(MCP4822_Channel_enum channel,
                   MCP4822_Gain_enum    gain,
                   uint32_t             value_12_bits)
{
    uint16_t word_to_write = value_12_bits & 0x0FFFu;
    word_to_write |= channel << 15u;
    word_to_write |= gain << 13u;
    word_to_write |= 1u << 12u; // disable shutdown, allow Vout

    SPI1_Transmit(word_to_write);
}
