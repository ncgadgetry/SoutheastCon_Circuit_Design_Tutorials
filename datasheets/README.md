# Datasheets

This directory contains datasheets and technical reference documents for components used in the SoutheastCon Circuit Design Challenge tutorials.

These documents are provided as reference material. Students should refer to the appropriate documentation when a tutorial directs them to do so, or when additional information about a component's electrical characteristics, pinout, registers, timing, or operation is needed.

## Microcontrollers

### Arduino Mega 2560

[**ATmega640/1280/1281/2560/2561 Datasheet**](atmel-2549-8-bit-avr-microcontroller-atmega640-1280-1281-2560-2561_datasheet.pdf)

The ATmega2560 microcontroller is the processor used on the Arduino Mega 2560. This datasheet provides detailed information about the microcontroller's pins, memory, timers, ADC, UARTs, SPI, I2C, interrupts, and other internal peripherals.

### ESP32-WROOM-32

[**ESP32-WROOM-32 Datasheet**](esp32-wroom-32_datasheet_en.pdf)

The ESP32-WROOM-32 module is used in the ESP32 tutorials and in the communications exercises. The datasheet provides information about the module, power requirements, GPIO, UART, SPI, I2C, wireless capabilities, and other features.

> **Note:** This datasheet identifies the ESP32-WROOM-32 as **Not Recommended for New Designs (NRND)**. It is retained here because this is the module used by the competition hardware and tutorials.

## Communication Components

### TSSP93038SS1ZA 38 kHz IR Receiver

[**TSSP93038SS1ZA Datasheet**](tssp93038ss1za.pdf)

The Vishay TSSP93038SS1ZA is the 38 kHz infrared receiver used in the modulated IR communication tutorial.

The device responds to 38 kHz infrared bursts and provides an active-low digital output to the microcontroller. The datasheet contains the receiver's electrical characteristics, pinout, operating limits, and timing information.

This is an important reference for **Communication 03**.

### TSAL6200 Infrared LED

[**TSAL6200 Datasheet**](tsal6200.pdf)

The Vishay TSAL6200 is a high-power 940 nm infrared-emitting diode used with the TSSP93038SS1ZA receiver.

The datasheet provides information about forward voltage, forward current, pulse operation, radiant intensity, wavelength, package dimensions, and other electrical and optical characteristics.

This is an important reference for **Communication 03**.

## Sensors and Measurement

### INA219 Current/Power Monitor

[**INA219 Datasheet**](ina219.pdf)

The INA219 is a bidirectional current and power monitor with an I2C interface. It can measure bus voltage and shunt voltage and can report calculated current and power.

The datasheet includes information about the device's electrical characteristics, I2C interface, configuration registers, calibration, and measurement operation.

### ADXL345 3-Axis Accelerometer

[**ADXL345 Datasheet**](adxl345.pdf)

The ADXL345 is a digital three-axis accelerometer with selectable measurement ranges and both I2C and SPI interfaces.

The datasheet provides information about the sensor's operating modes, registers, measurement ranges, interrupts, and serial interfaces.

### MPU-6050

[**MPU-6000/MPU-6050 Register Map and Descriptions**](RM-MPU-6000A.pdf)

This document is the **MPU-6000/MPU-6050 Register Map and Descriptions** from InvenSense. It provides detailed information about the MPU-6050's registers and configuration.

This document is useful when a tutorial requires students to work directly with the MPU-6050's registers or configure its accelerometer and gyroscope.

> **Note:** This is a register-map reference rather than a complete MPU-6050 datasheet.

## Display

### SSD1306 OLED Controller

[**SSD1306 Datasheet**](SSD1306.pdf)

The SSD1306 is the display controller used by many small monochrome OLED modules.

The datasheet provides information about the controller's display memory, commands, interfaces, timing, electrical characteristics, and configuration.

The specific OLED modules used in the tutorials may contain additional circuitry beyond the SSD1306 controller itself. Module-specific documentation may therefore differ from this controller datasheet.

## Using the Datasheets

Datasheets are technical reference documents and are not intended to replace the tutorial instructions.

When working through the tutorials:

1. Follow the tutorial instructions first.
2. Use the datasheet to look up information about the component when directed to do so.
3. Pay particular attention to **pin assignments, supply voltage, logic levels, absolute maximum ratings, and electrical characteristics** when connecting hardware.
4. Do not assume that two components with similar names or functions have identical electrical characteristics.

The datasheet is the authoritative source for the electrical and operating specifications of the component it documents.

## Document Sources

The documents in this directory were obtained from component manufacturers or reputable electronics distributors and resellers. Where possible, the original manufacturer's documentation is used.

Datasheets are provided for educational and reference purposes as part of the SoutheastCon Circuit Design Challenge tutorial materials.