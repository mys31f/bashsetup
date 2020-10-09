#!/bin/bash
sudo dnf install ibus -y
sudo dnf install https://download.opensuse.org/repositories/home:/lamlng/Fedora_32/x86_64/ibus-bamboo-0.6.7-1.1.x86_64.rpm -y
echo "Please check your autostart settings and add in this command `ibus-daemon -drx`. This will autostart your Ibus daemon and then you should change your Ibus settings to have ibus-bamboo enabled."
