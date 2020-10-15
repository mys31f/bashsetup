#!/bin/bash  
sudo dnf install akmod-nvidia -y
echo "The PC will reboot in 30 seconds for the drivers to apply. Please wait."
sleep 30
reboot