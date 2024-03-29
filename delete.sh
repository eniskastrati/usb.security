#!/bin/bash

#This is the script to remove the usb.security feature from your system

echo "Deleting usb.security feature from your system"
echo
echo "Please keep in mind that this feature may be very usefull when working somewhere remote or in an open shared office";
echo
#Password is used to paste the files on your system
echo "Please type in your password to allw the delete process: ";

#Stoping & Disabling the security service
systemctl stop usb.security.service;
systemctl disable usb.security.service;

#Coyping the files from repo to the system
sudo rm -rf /usr/local/bin/usb-shutdown-script.sh ;
sudo rm -rf /etc/systemd/system/usb.security.service;

sudo rm -rf ~/.config/usb.security/.config;

echo "Thank you for using the usb.service !"