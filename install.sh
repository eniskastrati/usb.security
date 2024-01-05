#!/bin/bash

#This is the script to setup the usb.security feature in you system

echo "Setting up usb.security feature on your system";
echo
#Password is used to paste the files on your system
echo "Please type in your password to allw the setup: ";

#Coyping the files from repo to the system
sudo cp ./src/usb-shutdown-script.sh /usr/local/bin/;
sudo cp ./src/usb.security.service /etc/systemd/system/;

#Making the file executable
sudo chmod +x /usr/local/bin/usb-shutdown-script.sh;

#Enabling & Starting the security service
systemctl enable usb.security.service;
systemctl start usb.security.service;

echo "Thank you for using usb.service !";