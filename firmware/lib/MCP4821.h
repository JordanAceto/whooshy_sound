/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   MCP4821.h provides types and functions for interfacing with MCP4821
--|   12-bit SPI DACs.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   mcp4821_datasheet.pdf
--|
--|----------------------------------------------------------------------------|
*/

#ifndef MCP4821_H_INCLUDED
#define MCP4821_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include "stm32l031xx.h"

/*
--|----------------------------------------------------------------------------|
--| PUBLIC DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: MCP4821_FULL_SCALE
--| DESCRIPTION: Full scale ouptut for MCP4821 SPI DACs.
--| TYPE: uint32_t
*/
#define MCP4821_FULL_SCALE (0x0FFFu)

/*
--|----------------------------------------------------------------------------|
--| PUBLIC TYPES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: MCP4821_Gain_enum
--| DESCRIPTION: enumeration for MCP4821 gain
*/
typedef enum MCP4821_Gain_Enumeration
{
    MCP4821_GAIN_2x = 0u,
    MCP4821_GAIN_1x = 1u
} MCP4821_Gain_enum;

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    MCP4821_Write

Function Description:
    Write the given 12 bit signal to a MCP4821 DAC via SPI.

Parameters:
    gain: the gain to use, 1x or 2x (2x will cause clipping in a 3.3v system)
    value_12_bits: the 12 bit value to write (bits higher than 12 are discarded)

Returns:
    None

Assumptions/Limitations:
    Assumes that all system initialization is complete.
------------------------------------------------------------------------------*/
void MCP4821_Write(MCP4821_Gain_enum gain, uint32_t value_12_bits);

#endif
