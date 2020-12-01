#!/bin/bash
sudo pacman -S --noconfirm ibus
git clone https://aur.archlinux.org/ibus-bamboo.git
cd ibus-bamboo
makepkg -si
cd
rm -rf ibus-bamboo
ibus-daemon -drx
ibus restart
echo "Please add this command: `ibus-daemon -drx` to your autostart settings, which you could find by finding in the start menu. This is not needed for GNOME."