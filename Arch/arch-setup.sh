#!/bin/bash
sudo pacman -Syu --noconfirm
sudo pacman -R firefox* libreoffice* --noconfirm
sudo pacman -S neofetch telegram-desktop chromium qbittorrent steam wine lutris discord obs-studio kdenlive gimp krita blender inkscape audacity git --noconfimr
#Installs yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si 
cd
#Installs FreeOffice
git clone https://aur.archlinux.org/freeoffice.git
cd freeoffice
makepkg -si
cd
#Installs Zoom
git clone https://aur.archlinux.org/zoom.git
cd zoom
makepkg -si
cd
#Installs Spotify
git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -si
cd
#Installs Viber
git clone https://aur.archlinux.org/viber.git
cd viber
makepkg -si
cd
#Installs WhatsApp
rm -r yay
rm -r freeoffice
rm -r zoom
rm -r spotify
rm -r viber
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."