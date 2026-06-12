# Solar MPPT Controller

This project is a custom-built Maximum Power Point Tracking (MPPT) controller for photovoltaic (PV) systems.

## Overview

The goal of this project is to implement and compare different MPPT algorithms under real-world conditions using custom-designed hardware.

## Hardware

- DC-DC converter-based MPPT controller
- Current and voltage sensing
- Microcontroller-based control system

## Firmware

Implemented MPPT algorithms:
- Perturb & Observe (P&O)
- Incremental Conductance
- Constant Voltage (baseline)
- Experimental methods (future work)

## Structure

- `hardware/` → Schematics, PCB design, BOM
- `firmware/` → Embedded C/C++ code
- `simulations/` → MATLAB/Python/Simulink models
- `enclosure/` → FreeCAD mechanical design
- `docs/` → Notes, diagrams, thesis-related material

## Tools

- KiCad for PCB design
- FreeCAD for enclosure design
- STM32 / ESP32 (planned MCU platform)
