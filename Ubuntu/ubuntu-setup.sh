#!/bin/bash
sudo apt-get remove firefox libreoffice-* -y --purge
sudo apt-get autoremove -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:obsproject/obs-studio -y
sudo apt-add-repository ppa:lutris-team/lutris -y
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4773BD5E130D1D45
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
sudo add-apt-repository "deb http://repository.spotify.com stable non-free" -y
sudo apt-get update & sudo apt-get upgrade -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo dpkg -i viber.deb
rm viber.deb
wget https://dl.discordapp.net/apps/linux/0.0.13/discord-0.0.13.deb
sudo dpkg -i discord-*.deb
rm discord-*.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_982-01_amd64.deb
sudo dpkg -i softmaker-*.deb
rm softmaker-*.deb
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.469451.0927/zoom_amd64.deb
rm zoom_amd64.deb
sudo apt-get install -fy
sudo apt-get install spotify-client qbittorrent telegram-desktop wine-stable lutris obs-studio kdenlive gimp krita blender inkscape audacity neofetch -y
wget https://cdn.discordapp.com/attachments/538903130704838656/796102070825779250/dxvk_versions.json -P $HOME/.local/share/lutris/runtime/dxvk # Something might have gone wrong during Lutris installation that when running "lutris -d" would get an error about the list of DXVK versions.
neofetch
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
