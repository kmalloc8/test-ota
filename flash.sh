#!/bin/bash

#export SDK_PATH=$(pwd)/ESP8266_RTOS_SDK
#export BIN_PATH=$(pwd)/bin

esptool.py -p /dev/ttyUSB0 --baud 921600 write_flash -fs 2MB-c1 -fm qio -ff 40m \
	0x0 $BIN_PATH/boot_v1.7.bin \
    0x1000 $BIN_PATH/upgrade/user1.2048.new.5.bin \
    0x1FC000 $BIN_PATH/esp_init_data_default.bin \
    0x1FE000 $BIN_PATH/blank.bin
