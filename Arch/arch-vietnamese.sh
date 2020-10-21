#!/bin/bash
sudo pacman -S --noconfirm ibus
git clone https://aur.archlinux.org/ibus-bamboo.git
cd ibus-bamboo
makepkg -si
cd
rm -rf ibus-bamboo
echo "Please check your autostart settings and add in this command `ibus-daemon -drx`. This will autostart your Ibus daemon and then you should change your Ibus settings to have ibus-bamboo enabled."
