#/!bin/bash

configPath=~/.config/usb.security/.config;

TRUSTED_USB_LIST=`sudo cat ~/.config/usb.security/.config`;
TRUSTED_USB_LIST_UPDATED="${TRUSTED_USB_LIST}\|$1";

echo $TRUSTED_USB_LIST_UPDATED > ~/.config/usb.security/.config