
#pragma once

/** @brief General Purpose Input Output pins */
namespace BSP::gpio
{
    /**
     * @brief Initialize the GPIO pins.
     *
     * PA0 is an analog input mapped to the rate CV input.
     * PA1 is an analog input mapped to the shape CV input.
     * PA2 is an analog input mapped to the level CV input.
     *
     * PA4 is SPI1 NSS DAC chip select.
     * PA5 is SPI1 SCK.
     * PA7 is SPI1 MOSI
     *
     * PA13 is SYS SWDIO
     * PA14 is SYS SWCLK
     */
    void init(void);
}
