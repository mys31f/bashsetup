#!/bin/bash
sudo apt install linux-headers-amd64 -y
echo "deb http://deb.debian.org/debian buster-backports main contrib non-free" >> /etc/apt/sources.list
sudo apt update 
sudo apt install -ty buster-backports nvidia-driver
