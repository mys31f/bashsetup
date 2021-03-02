#!/bin/bash
sudo apt install ibus -y
echo 'deb http://download.opensuse.org/repositories/home:/lamlng/Debian_10/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL https://download.opensuse.org/repositories/home:lamlng/Debian_10/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:lamlng.gpg > /dev/null
sudo apt install ibus-bamboo -y
ibus-daemon -drx
ibus restart
echo "Please add this command: `ibus-daemon -drx` to your autostart settings, which you could find by finding in the start menu. This is not needed for GNOME."