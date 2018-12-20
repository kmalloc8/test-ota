#!/bin/bash

#export SDK_PATH=$(pwd)/ESP8266_RTOS_SDK
#export BIN_PATH=$(pwd)/bin

esptool.py -p /dev/ttyUSB0 --baud 921600 erase_flash
