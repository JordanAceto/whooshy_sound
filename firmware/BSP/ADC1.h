/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   ADC1.c provides the implementation for initializing the ADC.
--|
--|   ADC1 continuously scans the input channels and fills a buffer via DMA.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|   STM32L0x1 Reference Manual, page 167 (RCC)
--|   STM32L0x1 Reference Manual, page 278 (ADC)
--|
--|----------------------------------------------------------------------------|
*/

#ifndef ADC1_H_INCLUDED
#define ADC1_H_INCLUDED

/*
--|----------------------------------------------------------------------------|
--| INCLUDE FILES
--|----------------------------------------------------------------------------|
*/

#include <stdint.h>

/*
--|----------------------------------------------------------------------------|
--| PUBLIC DEFINES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: ADC1_FULL_SCALE
--| DESCRIPTION: the full scale value for ADC readings
--| TYPE: uint
*/
#define ADC1_FULL_SCALE (0x0FFFu)

/*
--|----------------------------------------------------------------------------|
--| PUBLIC TYPES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: ADC1_Raw_Input_enum
--| DESCRIPTION: enumeration of the ADC1 analog inputs
*/
typedef enum ADC1_Raw_Input_Enumeration
{
    ADC1_RAW_INPUT_LFO_FREQ = 0u,
    ADC1_RAW_INPUT_LFO_SHAPE,
    ADC1_RAW_INPUT_LFO_LEVEL,

    NUM_ADC1_RAW_INPUTS
} ADC1_Raw_Input_enum;

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: adc1_raw_input
--| DESCRIPTION: the array of raw ADC inputs, filled via DMA
--| TYPE: uint16_t
*/
uint16_t adc1_raw_input[NUM_ADC1_RAW_INPUTS];

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    ADC1_Init

Function Description:
    Perform initialization of the ADC1.

Parameters:
    None

Returns:
    None

Assumptions/Limitations:
    Assumed that this will be called before using the ADC1.
------------------------------------------------------------------------------*/
void ADC1_Init(void);

#endif
