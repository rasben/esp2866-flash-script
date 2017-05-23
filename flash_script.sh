#!/bin/bash
PORT='/dev/tty.wchusbserial*'

esptool.py --port $PORT --baud 115200 erase_flash
esptool.py --port $PORT --baud 115200 write_flash --flash_size=detect 0 firmware-combined.bin
