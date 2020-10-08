***mys31f's setup scripts***
 
These script files are made to get things to work for you on some of the most popular Linux distributions. This includes Arch Linux and its derivatives; Debian and its derivatives; Fedora; Manjaro; OpenSUSE and its derivatives; and Ubuntu and its derivatives.

***Requirements***

- Fedora 32/33 Beta
- Ubuntu 20.04/Linux Mint 20
- OpenSUSE Leap/Tumbleweed
- Arch Linux/Manjaro.
- Debian Buster/LMDE 4/SparkyLinux Nibiru.

***How to use this set of scripts***

Open GitHub and clone this repository as a ZIP file.
Go to your Downloads folder and unzip the file.
Open a terminal window.
Type in the following command(s):
`sh Downloads/”your distribution of choice”/”your distribution of choice in lowercase”-setup.sh`
`sh Downloads/”your distribution of choice”/”your distribution of choice in lowercase”-nvidia.sh` if you have an NVIDIA graphics card.
`sh Downloads/”your distribution of choice”/”your distribution of choice in lowercase”-vietnamese.sh’ if you need to type Vietnamese. Linux Mint users do not need to do this as you can go to the start menu and type in “Input Methods” and follow the procedure given by the Linux Mint team.

***What actions are done***

Removes Firefox, Libreoffice. Updates the system.
Installs these apps sorted by category:
General apps: Chromium, FreeOffice, Zoom, Spotify, Qbittorrent, Viber, Telegram.
Gaming related apps: Steam, Lutris (and subsequently Wine), Discord, OBS Studio.
Creative related apps: Kdenlive, GIMP, Krita, Blender, Inkscape, Audacity.
NVIDIA drivers for the NVIDIA script.
Ibus-bamboo for typing Vietnamese, and subsequently the Ibus engine. 
Distribution specific apps: RPMFusion and UnitedRPM for Fedora, yay for Arch Linux and Manjaro.


**NOTICE**: Chrome will be installed instead of Chromium on Debian to maintain Google login capabilities.