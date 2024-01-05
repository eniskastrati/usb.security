#!/bin/bash

# Turns on the Script, if this option is set to false the script will not analyze the USBs.
USB_CHECK_ENABLED=true

# Function to check for unknown USB devices and shut down if conditions are not met
# If a USB device that is NOT in the list connects, then it will shut down.
check_unknown_devices() {
    if lsusb | grep -q -v "1f75:0917\|054c:0243"; then
        echo "Unknown USB device connected, shutting down..."
        /sbin/shutdown -h now
    fi
}

