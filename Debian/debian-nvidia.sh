#!/bin/bash
sudo apt-get install linux-headers-amd64 -y
echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt-get update 
sudo apt-get install -t buster-backports nvidia-driver
echo "The PC will restart in 30 seconds for the drivers to apply. Please wait."
sleep 30
reboot
