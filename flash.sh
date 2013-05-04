#!/bin/bash

echo "** PRESS AND HOLD RESET"
sleep 2
echo "** RELEASE RESET"
avrdude -p atmega328p -b 57600 -P /dev/tty.usbserial-A900fwgw -c stk500v1 -U flash:w:main.hex -U eeprom:w:main.eep -C /usr/local/CrossPack-AVR/etc/avrdude.conf
screen /dev/tty.usbserial-A900fwgw 57600