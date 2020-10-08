#!/bin/bash
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y
sudo apt install ibus ibus-bamboo -y
echo "Please check your autostart settings and add in this command `ibus-daemon -drx`. This will autostart your Ibus daemon and then you should change your Ibus settings to have ibus-bamboo enabled."
