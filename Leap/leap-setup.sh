#!/bin/bash
echo "This set of scripts is only in testing. Please help me with any problems that may arise from the installation."
sudo zypper remove firefox* libreoffice* --non-interactive
sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2/standard/openSUSE:Leap:15.2.repo --non-interactive
sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2:NonFree:Update/standard/openSUSE:Leap:15.2:NonFree:Update.repo --non-interactive
sudo zypper update --non-interactive
wget https://download.cdn.viber.com/desktop/Linux/viber.rpm
    if [ $? != 0 ]; then 
        echo "Plese check your internet connection, either contact your ISP or check your Wi-Fi or Ethernet connection."
        exit 1
    fi
sudo rpm -i viber.rpm
rm viber.rpm
wget https://shop.softmaker.com/repo/linux-repo-public.key
    if [ $? != 0 ]; then 
        echo "Plese check your internet connection, either contact your ISP or check your Wi-Fi or Ethernet connection."
        exit 1
    fi
sudo rpm --import linux-repo-public.key
rm linux-repo-public.key
wget https://www.softmaker.net/down/softmaker-freeoffice-2018-978.x86_64.rpm
    if [ $? != 0 ]; then 
        echo "Plese check your internet connection, either contact your ISP or check your Wi-Fi or Ethernet connection."
        exit 1
    fi
sudo rpm -i softmaker-freeoffice-2018-978.x86_64.rpm
rm softmaker-freeoffice-2018-978.x86_64.rpm
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
    if [ $? != 0 ]; then 
        echo "Plese check your internet connection, either contact your ISP or check your Wi-Fi or Ethernet connection."
        exit 1
    fi
sudo rpm -i google-chrome-stable_current_x86_64.rpm
rm google-chrome-stable_current_x86_64.rpm 
wget https://d11yldzmag5yn.cloudfront.net/prod/5.3.472687.1012/zoom_openSUSE_x86_64.rpm
    if [ $? != 0 ]; then 
        echo "Plese check your internet connection, either contact your ISP or check your Wi-Fi or Ethernet connection."
        exit 1
    fi
sudo rpm -i zoom_openSUSE_x86_64.rpm
rm zoom_openSUSE_x86_64.rpm
sudo zypper install flatpak --non-interactive
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install com.spotify.Client
sudo zypper install qbittorrent telegram-desktop steam lutris wine discord obs-studio gimp krita blender inkscape audacity -y
