#!/bin/bash
echo "The installation will start in 30 seconds. Please make sure that you are monitoring for any errors that may come up during installation."
sleep 30
sudo apt-get remove firefox* libreoffice* -y
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_978-01_amd64.deb
sudo dpkg -i softmaker-freeoffice-2018_978-01_amd64.deb
rm softmaker-freeoffice-2018_978-01_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.12/discord-0.0.12.deb
sudo dpkg -i discord-0.0.12.deb
rm discord-0.0.12.deb
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
sudo add-apt-repository "deb http://repository.spotify.com stable non-free"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo apt -y install gnupg2 software-properties-common
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository https://dl.winehq.org/wine-builds/debian/
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add -    
echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list
sudo apt update && sudo apt upgrade -y && sudo apt install -fy
sudo apt install neofetch spotify-client winehq-stable qbittorrent lutris obs-studio kdenlive gimp krita inkscape audacity blender -y
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."

