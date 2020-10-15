#!/bin/bash
sudo zypper addrepo https://download.opensuse.org/repositories/home:lamlng/openSUSE_Leap_15.2/home:lamlng.repo
sudo zypper refresh
sudo zypper install ibus-bamboo
echo "Please check your autostart settings and add in this command `ibus-daemon -drx`. This will autostart your Ibus daemon and then you should change your Ibus settings to have ibus-bamboo enabled."


