# SoutheastCon 2027 Tutorials --- Start Here

**Tutorial Group:** All Groups\
**Last modified:** September 27, 2026 1:48 PM EDT\
**Author:** Rodney Radford

## Tutorial Groups

-   [Mega 2560 Tutorials](Mega_2560/)
-   [ESP32 Tutorials](ESP32/)
-   [Communication Tutorials](Communications/)
-   [AI Tutorials](AI/)

## Goal

Become familiar with the organization of the SoutheastCon Circuit Design
competition tutorials and understand how the different groups build on
one another.

## What You Need

-   The hardware and software listed in the individual tutorials
-   A computer with access to a wireless network
-   Your team's Arduino Mega 2560 and ESP32 hardware
-   A willingness to experiment, troubleshoot, and learn

## Introduction

As you prepare for the SoutheastCon Circuit Design competition, we have
prepared a series of tutorials covering many of the technologies and
techniques that may be useful during the competition.

Teams are expected to know and be familiar with all the concepts in the
tutorials. Actually, completing the tutorial is left up to the teams if
they feel they already have that knowledge. The tutorials are provided
so that you can become familiar with the hardware, software, and
problem-solving techniques that may be useful to your team.

The tutorials are organized into groups so that related material stays
together.

## Why Some Tutorials May Seem Basic

Some teams may find parts of these tutorials very basic, particularly
the early tutorials. That is intentional.

The tutorials are written so that a student who is less familiar with a
particular component, programming technique, or communication method can
follow along without having to already know the material.

Even when a concept seems obvious, the information is included because
it establishes the terminology, hardware connections, programming
techniques, and assumptions used by later tutorials and by the
competition.

More experienced teams should feel free to move quickly through material
they already understand. However, make sure you understand the concepts
and can reproduce the examples before moving on.

Teams are expected to have the IDE installed, with experience with both
the Arduino Mega 2560 and ESP32 hardware, and knowledge of all the
tutorials, prior to arriving at the competition. Teams without this will
be at a severe disadvantage to other teams given the short duration of
the competition.

## Required Equipment and Software

The following are required (or recommended) to complete the tutorials.

### Hardware

-   ELEGOO Mega 2560 R3 Project The Most Complete Starter Kit with
    Tutorial
-   KEYESTUDIO 48 Sensors Modules Starter Kit for Arduino
-   ESP32-WROOM-32 development board
-   USB cables appropriate for the Arduino Mega and ESP32
-   SSD1306, 128x64, 0.96" I²C OLED display with a supply-voltage range
    compatible with both the Arduino Mega 2560 and ESP32-WROOM-32
-   Breadboards --- at least two
-   Jumper wires
-   Potentiometer / variable resistor (from the ELEGOO 2560 kit)
-   MPU-6050 module (GY-521) (from the ELEGOO 2560 kit)

### Computer and Software

-   A computer that will be used to install and run the Arduino IDE
-   Arduino IDE with ESP32 board support installed (the tutorials
    explain this requirement)
-   Python 3 installed on the computer
-   Arduino libraries specified by the individual tutorials, including
    the Adafruit MPU6050 library and ArduinoJson where required
-   Wireless network for connecting the computer with the ESP32

### Recommended Equipment

-   Digital storage oscilloscope (DSO), such as the FNIRSI DSO-TC3
-   Digital multimeter
-   Additional breadboards and jumper wires

## Pay Attention to the Hardware

The Arduino Mega 2560 and ESP32 are not interchangeable. They use
different processors, different GPIO capabilities, different voltage
levels, and different pin assignments.

A circuit or program that works on one board may require changes before
it can be used on the other. Always check the tutorial's wiring diagram,
pin assignments, and voltage requirements before connecting hardware.

## How to Use These Tutorials

These tutorials are intended to be hands-on. Build the circuit, run the
program, observe what happens, and then experiment with it.

**Do not simply copy the code and move on.** Read the explanation, make
small changes, and observe the results. When something does not work,
troubleshoot it rather than immediately replacing it with a different
example.

Keep your working circuits and programs available as you progress. Later
tutorials build on techniques introduced earlier, and being able to
return to a known-working example can make troubleshooting much easier.

## Mega 2560 Tutorials

The first group of tutorials introduces the Arduino Mega 2560 and the
fundamentals of working with a microcontroller.

These tutorials begin with basic inputs and outputs and progress to
techniques such as:

-   Digital and analog inputs and outputs
-   Working with sensors and actuators
-   Using `millis()` for non-blocking timing
-   Running multiple activities at different rates
-   Building programs that can respond to multiple inputs
-   Using the Serial Monitor and the Serial Plotter to monitor your
    program
-   I²C and how to use it to interface with sensors
-   Using a 6-DOF accelerometer and gyroscope sensor

These tutorials provide the foundation for working with the Arduino Mega
2560 portion of your team's hardware.

## ESP32 Tutorials

The second group introduces the ESP32-WROOM-32 microcontroller.

The ESP32 is a different processor from the Arduino Mega 2560, with
different capabilities and different ways of working with its hardware.

The ESP32 tutorials introduce:

-   ESP32 digital and analog inputs and outputs
-   Using I²C on the ESP32 and how it differs from Mega 2560
-   OLED displays
-   Connecting to a Wi-Fi access point
-   Determining the ESP32's IP and MAC addresses
-   Sending information to a server using HTTP POST
-   Sending data in JSON format
-   Working with a simple Python server

These tutorials build on the Arduino skills while introducing the
additional capabilities of the ESP32.

## Communication Tutorials

> **Note:** these tutorials will be released at a later date.

The communication tutorials introduce techniques for transferring
information between the microcontrollers.

These tutorials will build on the Arduino and ESP32 tutorials and
introduce concepts such as:

-   Communication between processors
-   Infrared communication
-   Sending multiple values in a single message
-   Representing information as ASCII text
-   Detecting errors in transmitted data
-   CRC error detection
-   Acknowledgements and communication protocols

The communication tutorials are developed as a separate group because
communication is an important engineering concept that can be applied to
many different systems.

## AI Tutorials

> **Note:** these tutorials will be released at a later date.

The fourth group introduces using artificial intelligence as an
engineering and programming tool.

The goal is not simply to ask AI to write a program for you. Instead,
these tutorials will give you practice using AI to:

-   Ask technical questions
-   Understand unfamiliar hardware
-   Explain existing programs
-   Find and understand errors
-   Modify an existing program
-   Extend a working program
-   Compare possible solutions
-   Check whether an AI-generated answer is actually correct

AI can be a very useful engineering tool, but you are responsible for
understanding and verifying the answers you receive.

## How the Tutorials Are Organized

The tutorials are intentionally arranged in the following order:

**Mega 2560 → ESP32 → Communication → AI → additional topics as
appropriate**

The Mega 2560 tutorials establish fundamental microcontroller concepts.
The ESP32 tutorials reuse those concepts while adding networking. The
Communication tutorials then apply those skills to
processor-to-processor communication, followed by AI as an engineering
tool.

-   **Mega 2560** -- installing the Arduino IDE, tutorials for the Mega
    2560
-   **ESP32** -- using the Arduino IDE for the ESP32 boards, tutorials
    for the ESP32 and Wi-Fi
-   **Communication** -- tutorials on communication between the Mega
    2560 and the ESP32 boards
-   **AI** -- getting started with using AI for software and hardware
    development

You should work through the tutorials in order within each group, since
later tutorials may assume that you have completed earlier ones.

You do not need to be an expert programmer to work through these
tutorials. They are designed to give you working examples that you can
build, test, modify, and learn from.

## Experiment and Learn

Most importantly:

> **Experiment • Experiment • Experiment**

If something doesn't work, try to figure out why. Search for examples.
Read the documentation. Ask questions. And use AI as another tool in
your engineering toolbox.

The competition will not simply test whether you can remember the
examples from these tutorials. It will test whether you can take what
you have learned and combine it in a new way to solve a problem.

## Amazon Links to Purchase the Required Hardware

The following links are provided as an aid in obtaining the necessary
hardware. You may purchase equivalent compatible parts from these links
or from another source.

-   [ELEGOO Mega 2560 R3 Project - The Most Complete Starter Kit with
    Tutorial](https://www.amazon.com/EL-KIT-008-Project-Complete-Ultimate-TUTORIAL/dp/B01EWNUUUA)
-   [KEYESTUDIO 48 Sensors Modules Starter Kit for
    Arduino](https://www.amazon.com/KEYESTUDIO-Pressure-etc-Programming-Beginners-Learning/dp/B07K6L2VRB)
-   [ESP32-WROOM-32 with USB
    cable](https://www.amazon.com/NodeMCU-ESP-WROOM-32-Bluetooth-Development-Compatible/dp/B0D1V336DL)
-   USB-C charging/data cable (compatible with the ESP32 board):
    https://www.amazon.com/Charging-Braided-Charger-Compatible-Android/dp/B092M6XNQW
-   [0.96" OLED
    display](https://www.amazon.com/Hosyond-Display-Self-Luminous-Compatible-Raspberry/dp/B09C5K91H7)
-   Breadboards (at least two) and jumper wires:
    https://www.amazon.com/HUAREW-Breadboard-Jumper-Include-Points/dp/B09VKYLYN7

## Amazon Links to Optional (but Recommended) Hardware

The following links are provided as an aid in obtaining optional
hardware that may be useful for completing the tutorials. Equivalent
compatible equipment may be purchased from another source.

-   [FNIRSI DSO-TC3 3-in-1
    Oscilloscope](https://www.amazon.com/dp/B0BV9X733J)
