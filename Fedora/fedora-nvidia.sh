#!/bin/bash  
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda -y
echo "The PC will reboot in 30 seconds for the drivers to apply. Please wait."
sleep 30
reboot
