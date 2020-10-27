#!/bin/bash
sudo pacman -Syu --noconfirm
sudo pacman -R firefox libreoffice-fresh --noconfirm
sudo pacman -S neofetch telegram-desktop qbittorrent steam wine lutris discord obs-studio kdenlive gimp krita blender inkscape audacity git --noconfirm
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
    if [ $? != 0]
        echo "We might have a broken repository here on our hands so please notify the maintainers on the Arch User Repository if this happens. A different version of Spotify will be installed instead in this case."
        sudo pacman -S --noconfirm flatpak
        sudo flatpak install flathub com.spotify.Client
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
