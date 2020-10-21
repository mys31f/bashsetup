#!/bin/bash
echo "Please note that Solus has very few mirrors, mostly the load goes to a server in the US so if you're not in North America, your installs may not be stable, so when it gets stuck at something and then cancels, run the script again, just to be sure. The script will start in 30 seconds."
sleep 30
sudo eopkg remove firefox libreoffice-common -y
sudo eopkg upgrade -y
sudo eopkg install steam lutris wine obs-studio discord kdenlive gimp krita blender inkscape audacity viber telegram -y
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/getsolus/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml
sudo eopkg it google-chrome-*.eopkg -y;sudo rm google-chrome-*.eopkg
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/getsolus/3rd-party/master/network/im/viber/pspec.xml
sudo eopkg it viber*.eopkg -y;sudo rm *.eopkg
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/getsolus/3rd-party/master/multimedia/music/spotify/pspec.xml
sudo eopkg it spotify*.eopkg -y;sudo rm spotify*.eopkg
wget https://www.softmaker.net/down/softmaker-freeoffice-978-amd64.tgz
tar -xvzf softmaker-freeoffice-978-amd64.tgz
cd softmaker-freeoffice-978-amd64
./installfreeoffice
rm -r softmaker-freeoffice-978-amd64.tgz freeoffice2018.tar.lzma installfreeoffice
echo "Thanks for using the scripts. If there are any issues, please ask me or if there are bugs, please make a report on GitHub."
