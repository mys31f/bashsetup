#!/bin/bash
#Will not use "set -e" due to dpkg returning dependency errors, which prevents the package from being installed unless fixed by using an "apt install -f", which will then install and configure the package afterwards. This also applies to other Debian-based derivatives as well.
sudo apt-get remove firefox* libreoffice* -y
sudo apt-get install software-properties-common -y
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_980-01_amd64.deb
sudo dpkg -i softmaker-freeoffice-2018_980-01_amd64.deb
rm softmaker-freeoffice-2018_980-01_amd64.deb
wget https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb
  if [ $? !=0 ]; then
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i discord-0.0.12.deb
rm discord-0.0.12.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  if [ $? !=0 ]; then
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
  if [ $? !=0 ]; then
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i viber.deb
rm viber.deb
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.472687.1012/zoom_amd64.deb
  if [ $? !=0 ]; then
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i zoom_amd64.deb
rm zoom_amd64.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
  if [ $? !=0 ]; then
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys A87FF9DF48BF1C90
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo apt -y install gnupg2 software-properties-common
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository https://dl.winehq.org/wine-builds/debian/
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add -
echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list
sudo apt-get update && sudo apt-get upgrade -y && sudo apt install -fy
sudo apt-get install neofetch spotify-client winehq-stable qbittorrent lutris obs-studio kdenlive gimp krita inkscape audacity blender -y
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
