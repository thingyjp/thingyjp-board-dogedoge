# DogeDoge Allwinner V3S SoM

## What

DogeDoge is a *complete* Linux system on a module. Complete meaning it can boot to a shell if you put power into it.

This repo contains (maybe not right now):

- Kicad files for the board.
- Kicad files for a test/programming jig.
- Makefiles, configs etc to create buildroot based firmware images with the thingy.jp middleware for wifi configuration, OTA updates etc.
- Makefiles, configs etc to create a buildroot based sd-card image for automated testing and writing the initial firmware in a jig.

## Why

People continue to use complete garbage to put together both commercial and hobby network enabled, IoT, things.
