# FPGA-Based Remote Car Control System with Microprocessor and Peripherals

[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![University of Edinburgh](https://img.shields.io/badge/University-Edinburgh-blue.svg)](https://www.ed.ac.uk/)

A hardware-software co-design project implementing an FPGA-based embedded system for remote toy car control using a custom microprocessor, PS/2 mouse interface, VGA display driver, and optional IR transmitter. Developed for the **Digital Systems Laboratory (ELEE10023/PGEE11117)** at the University of Edinburgh.

---

## Overview

This project demonstrates a complete embedded system design on the **Xilinx Artix-7 BASYS 3 FPGA board**, featuring:

- **Custom 8-bit Microprocessor**: Harvard architecture with RISC instruction set, ALU, interrupts, and memory-mapped peripherals
- **PS/2 Mouse Interface**: Bidirectional communication with protocol decoding and motion tracking
- **VGA Display Driver**: 640x480 resolution with frame buffer optimization (8-bit color depth)
- **IR Transmitter (Bonus)**: Pulse-code modulation for multi-directional car control
- **Hardware-Software Co-design**: Verilog for hardware modules and assembly-like instruction set for software control

---

## Features

### Core Components
| Module | Description |
|--------|-------------|
| **Microprocessor** | <ul><li>Harvard architecture with separate instruction/data memory</li><li>12 ALU operations (arithmetic, logic, shifts)</li><li>Interrupt handling (mouse motion/timer)</li><li>Memory-mapped peripheral interface</li></ul> |
| **Mouse Interface** | <ul><li>PS/2 protocol decoding</li><li>Motion tracking (X/Y displacement)</li><li>Button state detection</li><li>Interrupt generation on movement</li></ul> |
| **VGA Driver** | <ul><li>640x480 resolution with 25.175MHz pixel clock</li><li>Optimized 256x128 frame buffer</li><li>Dynamic color palette configuration</li><li>Chequered pattern generation</li></ul> |
| **IR Transmitter** | <ul><li>36-40KHz carrier frequency generation</li><li>Multi-car support (Red/Blue/Green/Yellow)</li><li>Pulse-code modulation for directional control</li></ul> |

### System Architecture
```mermaid
graph TD
    Microprocessor -->|8-bit Bus| Mouse
    Microprocessor -->|8-bit Bus| VGA
    Microprocessor -->|8-bit Bus| LEDs
    Microprocessor -->|8-bit Bus| SevenSeg
    Microprocessor -->|8-bit Bus| Timer
    Microprocessor -->|8-bit Bus| IR_Transmitter
    Mouse -->|Interrupt| Microprocessor
    Timer -->|Interrupt| Microprocessor
