#!/bin/bash
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y
sudo apt install ibus ibus-bamboo -y
ibus-daemon -drx
ibus restart
echo "Please add this command: `ibus-daemon -drx` to your autostart settings, which you could find by finding in the start menu. This is not needed for GNOME."