#!/bin/bash
sudo dnf install ibus -y
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_32/home:lamlng.repo
sudo dnf install ibus-bamboo -y
ibus-daemon -drx
ibus restart
echo "Please add this command: `ibus-daemon -drx` to your autostart settings, which you could find by finding in the start menu. This is not needed for GNOME."