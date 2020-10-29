#!/bin/bash
sudo apt install ibus -y
echo 'deb http://download.opensuse.org/repositories/home:/lamlng/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL https://download.opensuse.org/repositories/home:lamlng/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:lamlng.gpg > /dev/null
sudo apt install ibus-bamboo -y
