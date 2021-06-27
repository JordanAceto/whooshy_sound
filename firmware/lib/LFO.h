/*
--|----------------------------------------------------------------------------|
--| FILE DESCRIPTION:
--|   LFO.h provides the types and interface for creating and using Low 
--|   Frequency Oscillators.
--|
--|   The LFOs are created using the technique of Direct Digital Synthesis.
--|
--|   Triangle, Sine, Square, and Random waveshapes are simultaneously available,
--|   as well as a crossfaded output. The crossfade output takes in a control
--|   signal for fade position, which scans through the above waveshapers. The
--|   scan order is Triangle -> Sine -> Square -> Random. This order means that 
--|   as the user advances the scan position control from low to high, the LFO
--|   wave morphs from smooth triangle, to puffy triangle, to sine, to puffy 
--|   sine, to square, to a random sample-and-hold-like signal.
--|
--|----------------------------------------------------------------------------|
--| REFERENCES:
--|      https://en.wikipedia.org/wiki/Numerically-controlled_oscillator
--|      https://en.wikipedia.org/wiki/Linear_interpolation
--|      https://www.digikey.com/en/articles/techzone/2019/mar/the-basics-of-direct-digital-synthesizers-ddss
--|----------------------------------------------------------------------------|
*/

#ifndef LIB_LFO_H_INCLUDED
#define LIB_LFO_H_INCLUDED

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
--| NAME: LFO_OUTPUT_NUM_BITS
--| DESCRIPTION: the effective number of bits used by the LFO
--| TYPE: uint
*/
#define LFO_OUTPUT_NUM_BITS (12u)

/*
--| NAME: LFO_OUTPUT_FULL_SCALE
--| DESCRIPTION: the full scale output of the LFO, the unsigned LFO outputs 
--|              range from 0 to full scale
--| TYPE: uint
*/
#define LFO_OUTPUT_FULL_SCALE ((1u << LFO_OUTPUT_NUM_BITS) - 1u)

/*
--| NAME: LFO_OUTPUT_HALF_SCALE
--| DESCRIPTION: the midpoint of the unsigned LFO
--| TYPE: uint
*/
#define LFO_OUTPUT_HALF_SCALE (LFO_OUTPUT_FULL_SCALE >> 1u)

/*
--| NAME: LFO_FREQ_mHz_DEFAULT_VALUE
--| DESCRIPTION: the default value for LFO frequency, in millihertz
--| TYPE: uint
*/
#define LFO_FREQ_mHz_DEFAULT_VALUE (250u)

/*
--| NAME: LFO_WAVE_SHAPE_DEFAULT_VALUE
--| DESCRIPTION: the default value for LFO waveshape
--| TYPE: uint
*/
#define LFO_WAVE_SHAPE_DEFAULT_VALUE (0u)

/*
--|----------------------------------------------------------------------------|
--| PUBLIC TYPES
--|----------------------------------------------------------------------------|
*/

/*
--| NAME: LFO_input_t
--| DESCRIPTION: Enumeration for the four variable input parameters to the LFO.
--|     These enumerations are used to give symbolic names to the input
--|     parameters, and to index into an array holding input variables.
*/
typedef enum LFO_Input_Type
{
    LFO_INPUT_TYPE_FREQ_mHz= 0u,
    LFO_INPUT_TYPE_WAVE_SCAN,

    NUM_LFO_INPUT_TYPES
} LFO_input_t;

/*
--| NAME: LFO_wave_t
--| DESCRIPTION: Enumeration of the waveshapes available as LFO outputs.
*/
typedef enum LFO_Wave_Type
{
    LFO_WAVE_TRIANGLE,
    LFO_WAVE_SINE,
    LFO_WAVE_SQUARE,
    LFO_WAVE_RANDOM,
    LFO_WAVE_CROSSFADED,

    NUM_LFO_WAVE_TYPES
} LFO_wave_t;

/*
--| NAME: LFO_t
--| DESCRIPTION: struct holding the variables which represent an LFO object.
--|
--| Members:
--|
*/
typedef struct LFO_Type
{
    uint16_t input[NUM_LFO_INPUT_TYPES];
    uint16_t output[NUM_LFO_WAVE_TYPES];

    uint32_t phase_accumulator;
    uint32_t tuning_word;

    // used in updating the random output
    uint32_t last_accum_random_trig;

    uint32_t sample_rate;

} LFO_t;

/*
--|----------------------------------------------------------------------------|
--| PUBLIC FUNCTION PROTOTYPES
--|----------------------------------------------------------------------------|
*/

/*------------------------------------------------------------------------------
Function Name:
    LFO_Initialize

Function Description:
    Initialize a given LFO struct by setting all input parameters to their 
    default values and setting the sample rate to the given value.

Parameters:
    * p__LFO: pointer to the LFO struct to initialize.
    sample_rate: the sample rate for the LFO, in Hz.

Returns:
    None.

Assumptions/Limitations:
    It is assumed that this function will be called prior to using the given
    LFO.
    Also assumed that the given LFO will be ticked at the given sample rate.
------------------------------------------------------------------------------*/
void LFO_Initialize(LFO_t * p_LFO, uint32_t sample_rate);

/*------------------------------------------------------------------------------
Function Name:
    LFO_Tick

Function Description:
    Process one tick of a given LFO struct. During a "tick", the phase 
    accumulator is incremented and the current output level is set.

    This function MUST be called periodically at the sample rate held by the 
    LFO that is passed in to this function.

Parameters:
    * p_LFO: pointer to the LFO struct to tick.

Returns:
    Mutates the fields of p_LFO

Assumptions/Limitations:
    If this function is not called periodically at the sample rate held by the 
    LFO that is passed in, then the LFO frequency will be incorrect.
------------------------------------------------------------------------------*/
void LFO_Tick(LFO_t * p_LFO);

/*------------------------------------------------------------------------------
Function Name:
    LFO_set_input

Function Description:
    Set the given input parameter to the new value.

Parameters:
    * p_LFO: pointer to the LFO struct.
    input_type: the enumerated input to set.
    value: the new value for the given input.

Returns:
    Mutates the fields of p_LFO

Assumptions/Limitations:
    Assumed that the input_type is a valis LFO_input_t enumeration and that the
    given value is in range for the specified input.
------------------------------------------------------------------------------*/
void LFO_set_input(LFO_t * p_LFO, LFO_input_t input_type, uint16_t value);

/*------------------------------------------------------------------------------
Function Name:
    LFO_get_output

Function Description:
    Get the current value of the given LFO waveshape.

Parameters:
    * p_LFO: pointer to the LFO struct.
    wave_type: the enumerated wave to get.

Returns:
    uin16_t: the current value of the given LFO waveshape.

Assumptions/Limitations:
    Assumed that the wave_type is a valis LFO_wave_t enumeration.
------------------------------------------------------------------------------*/
uint16_t LFO_get_output(LFO_t * p_LFO, LFO_wave_t wave_type);

#endif
