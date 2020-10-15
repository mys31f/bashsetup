#!/bin/bash
#Will not use "set -e" due to dpkg returning dependency errors, which prevents the package from being installed unless fixed by using an "apt install -f", which will then install and configure the package afterwards. This also applies to other Debian derivatives as well. 
echo "The installation will start in 30 seconds. Please make sure that you are monitoring for any errors that may come up during installation."
sleep 30
sudo apt-get remove firefox libreoffice-* -y --purge
sudo apt install software-properties-common -y
sudo apt-add-repository ppa:obsproject/obs-studio -y
sudo apt-add-repository ppa:lutris-team/lutris -y
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
sudo apt-add-repository "deb http://repository.spotify.com stable non-free" 
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 4773BD5E130D1D45
sudo apt update & sudo apt upgrade -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i viber.deb
rm viber.deb
wget https://dl.discordapp.net/apps/linux/0.0.12/discord-0.0.12.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i discord-*.deb
rm discord-*.deb
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i steam_latest.deb
rm steam_latest.deb
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_978-01_amd64.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
sudo dpkg -i softmaker-*.deb
rm softmaker-*.deb
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.469451.0927/zoom_amd64.deb
   if  [ $? !=0 ]; then 
        echo "Plese recheck your internet connection. Contact your ISP or see if your cables have gone loose."
        exit 1
    fi
rm zoom_amd64.deb
sudo apt install -fy
sudo apt install spotify-client qbittorrent telegram-desktop wine lutris obs-studio kdenlive gimp krita blender inkscape audacity neofetch -y
   if  [ $? !=0 ]; then 
        echo "Another version of Spotify will be installed and the script will retry again in a different way."
        sudo apt install flatpak -y
        sudo flatpak install flathub com.spotify.Client 
        sudo apt install qbittorrent telegram-desktop wine lutris obs-studio kdenlive gimp krita blender inkscape audacity neofetch -y
        exit 1
    fi
neofetch 
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
