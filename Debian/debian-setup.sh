#!bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt remove firefox* libreoffice* -y
wget https://dl.discordapp.net/apps/linux/0.0.12/discord-0.0.12.deb
sudo dpkg -i discord*.deb
rm discord*.deb
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_978-01_amd64.deb
sudo dpkg -i softmaker-freeoffice*.deb
rm softmaker-freeoffice*.deb
wget https://github.com/eneshecan/whatsapp-for-linux/releases/download/v1.0.9/whatsapp-for-linux_1.0.9_amd64.deb
sudo dpkg -i whatsapp-for-linux*.deb
rm whatsapp-for-linux*.deb
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
sudo apt install -fy
sudo apt install gnupg2 software-properties-common -y
echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_10/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_10/Release.key -O- | sudo apt-key add -
sudo dpkg --add-architecture i386
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository https://dl.winehq.ortg/wine-builds/debian/
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/Release.key | sudo apt-key add -    
echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10 ./" | sudo tee /etc/apt/sources.list.d/wine-obs.list
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt install --install-recommends winehq-stable -y
sudo apt install chromium neofetch lutris obs-studio kdenlive gimp krita blender inkscape audacity spotify-client -y
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."