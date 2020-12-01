#!/bin/bash
sudo pacman -S ibus git --noconfirm
git clone https://aur.archlinux.org/mozc.git
cd mozc
makepkg -si
cd
rm -rf mozc
ibus-daemon -drx
ibus restart
echo "Please add this command: `ibus-daemon -drx` to your autostart settings, which you could find by finding in the start menu. This is not needed for GNOME."