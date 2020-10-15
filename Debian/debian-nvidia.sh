#!/bin/bash
sudo apt install linux-headers-amd64 -y
echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >> /etc/apt/sources.list
sudo apt update 
sudo apt install -ty buster-backports nvidia-driver
echo "The PC will restart in 30 seconds for the drivers to apply. Please wait."
sleep 30
reboot