#!/bin/bash
sudo dnf remove firefox* libreoffice* -y
sudo dnf upgrade -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://github.com/UnitedRPMs/unitedrpms/releases/download/17/unitedrpms-$(rpm -E %fedora)-17.fc$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download.cdn.viber.com/desktop/Linux/viber.rpm https://d11yldzmag5yn.cloudfront.net/prod/5.3.469451.0927/zoom_x86_64.rpm https://www.softmaker.net/down/softmaker-freeoffice-2018-978.x86_64.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -y
sudo dnf install lpf-spotify-client qbittorrent telegram-desktop steam wine lutris discord obs-studio kdenlive neofetch gimp krita blender inkscape audacity -y
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."