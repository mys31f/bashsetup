#!/bin/bash
sudo pacman -Syu --noconfirm
sudo pacman -R firefox --noconfirm
sudo pacman -Rs libreoffice --noconfirm
sudo pacman -Rs libreoffice-fresh --noconfirm
sudo pacman -Rs libreoffice-still --noconfirm
sudo pacman -S neofetch telegram-desktop qbittorrent steam wine lutris discord obs-studio kdenlive gimp krita blender inkscape audacity git fakeroot make cmake --noconfirm
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
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
git clone https://aur.archlinux.org/spotify.git
cd spotify
makepkg -si
cd
#Installs Viber
git clone https://aur.archlinux.org/viber.git
cd viber
makepkg -si
cd
#Installs Chrome
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -si
cd
rm -rf yay
rm -rf freeoffice
rm -rf zoom
rm -rf spotify
rm -rf viber
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
