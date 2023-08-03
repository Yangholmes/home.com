#!/bin/bash

#MAC=$(echo -n 1c:1b; dd bs=1 count=4 if=/dev/random 2>/dev/null | hexdump -v -e '/1 ":%02X"')

rfkill unblock all
echo "0" > /sys/class/rfkill/rfkill0/state
echo "1" > /sys/class/rfkill/rfkill0/state
echo "" > /dev/ttyS1

brcm_patchram_plus --enable_hci --no2bytes --tosleep 200000 --use_baudrate_for_download --baudrate 115200 --patchram /lib/firmware/ap6255/bcm4345c0.hcd /dev/ttyS1 1>/tmp/ap6255.firmware 2>&1
