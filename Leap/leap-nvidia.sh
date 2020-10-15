#!/bin/bash
sudo zypper addrepo --refresh 'https://download.nvidia.com/opensuse/leap/$releasever' NVIDIA
sudo zypper install x11-video-nvidiaG05
echo "The PC will restart in 30 seconds for the drivers to apply. Please wait."
sleep 30
reboot