#!/bin/bash
sudo pacman -S --noconfirm ibus
git clone https://aur.archlinux.org/ibus-bamboo.git
cd ibus-bamboo
makepkg -si
cd
rm -rf ibus-bamboo
