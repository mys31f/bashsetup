#!/bin/bash
sudo eopkg install ibus ibus-unikey -y
ibus-daemon -drx
echo "Please check your autostart settings and add in this command `ibus-daemon -drx`. This will autostart your Ibus daemon and then you should change your Ibus settings to have ibus-bamboo enabled."
