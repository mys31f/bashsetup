#!/bin/bash
sudo echo "fastestmirror=True" >> /etc/dnf/dnf.conf
sudo dnf remove firefox* libreoffice* -y
sudo dnf upgrade -y --best --allowerasing
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --import -
sudo dnf install https://download.cdn.viber.com/desktop/Linux/viber.rpm https://d11yldzmag5yn.cloudfront.net/prod/5.3.469451.0927/zoom_x86_64.rpm https://www.softmaker.net/down/softmaker-freeoffice-2018-980.x86_64.rpm https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm -y
sudo dnf install wget git make cmake vlc lpf-spotify-client qbittorrent telegram-desktop steam wine lutris discord obs-studio kdenlive neofetch gimp krita blender inkscape audacity -y --best --allowerasing
wget https://cdn.discordapp.com/attachments/538903130704838656/796102070825779250/dxvk_versions.json -P $HOME/.local/share/lutris/runtime/dxvk # Something might have gone wrong during Lutris installation that when running "lutris -d" would get an error about the list of DXVK versions.
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
