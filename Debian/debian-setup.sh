#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt remove firefox* libreoffice* -y
wget https://dl.discordapp.net/apps/linux/0.0.12/discord-0.0.12.deb
sudo dpkg -i discord*.deb
rm discord*.deb
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_978-01_amd64.deb
sudo dpkg -i softmaker-freeoffice*.deb
rm softmaker-freeoffice*.deb
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.469451.0927/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
rm zoom_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i viber.deb
rm viber.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
<<<<<<< Updated upstream
sudo dpkg -i google-*.deb
rm google-*.deb
=======
sudo dpkg -i google-chrome-*.deb
>>>>>>> Stashed changes
sudo apt install -fy
sudo apt install gnupg2 software-properties-common -y
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo dpkg --add-architecture i386
sudo apt -y install gnupg2 software-properties-common
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository https://dl.winehq.org/wine-builds/debian/
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add -    
echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list
<<<<<<< Updated upstream
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
sudo apt install wine neofetch lutris obs-studio kdenlive gimp krita blender inkscape audacity spotify-client -y
=======
sudo apt install --install-recommends winehq-stable
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install --install-recommends winehq-stable -y
sudo apt install neofetch lutris obs-studio kdenlive gimp krita blender inkscape audacity spotify-client -y
>>>>>>> Stashed changes
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."