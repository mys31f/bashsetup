#!/bin/bash
#Will not use "set -e" due to dpkg returning dependency errors, which prevents the package from being installed unless fixed by using an "apt install -f", which will then install and configure the package afterwards. This also applies to other Debian-based derivatives as well.
sudo apt-get remove firefox* libreoffice* xterm* transmisson* -y
sudo apt-get install wget git cmake make xorriso fakeroot -y
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_980-01_amd64.deb
sudo dpkg -i softmaker-freeoffice-2018_980-01_amd64.deb
rm softmaker-freeoffice-2018_980-01_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb
sudo dpkg -i discord-0.0.13.deb
rm discord-0.0.13.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i viber.deb
rm viber.deb
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.472687.1012/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
rm zoom_amd64.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A87FF9DF48BF1C90
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo apt -y install gnupg2 software-properties-common
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4773BD5E130D1D45
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -fy
sudo apt-get install neofetch spotify-client wine qbittorrent lutris obs-studio kdenlive gimp krita inkscape audacity blender -y
wget https://cdn.discordapp.com/attachments/538903130704838656/796102070825779250/dxvk_versions.json -P $HOME/.local/share/lutris/runtime/dxvk # Something might have gone wrong during Lutris installation that when running "lutris -d" would get an error about the list of DXVK versions.
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
