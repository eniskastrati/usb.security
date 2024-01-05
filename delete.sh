#!/bin/bash

#This is the script to remove the usb.security feature from your system

echo "Deleting usb.security feature from your system"
echo
echo "Please keep in mind that this feature may be very usefull when working somewhere remote or in an open shared office";
echo
#Password is used to paste the files on your system
echo "Please type in your password to allw the delete process: ";

#Stoping & Disabling the security service
systemctl stop usb-shutdown.service;
systemctl disable usb-shutdown.service;

#Coyping the files from repo to the system
rm -rf /usr/local/bin/usb-shutdown-script.sh ;
rm -rf /etc/systemd/system/usb.security.service;

echo "Thank you for using the usb.service !"