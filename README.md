***mys31f's setup scripts***
 
These script files are made to get things to work for you on some of the most popular Linux distributions. This includes Arch Linux and its derivatives; Debian and its derivatives; Fedora; Manjaro; OpenSUSE and its derivatives; and Ubuntu and its derivatives. This can be used for deployment for switching from Windows or Mac OS to Linux for offices and organizations (if any of them even know that I do this anyways)

***Requirements***

- Fedora 32
- Ubuntu 20.04/Linux Mint 20
- Arch Linux/Manjaro.
- Debian Buster/LMDE 4/SparkyLinux Nibiru.
- Solus 4.1 Fortitude

***Dependencies***

The only thing you need is Ruby if you want to not do anything besides picking. If otherwise, bash is already included in every Linux distribution.
- Ubuntu based or Debian based distributions: `sudo apt install ruby`
- Fedora: `sudo dnf install ruby`
- Solus: `sudo eopkg it ruby` or `sudo eopkg install ruby`

***How to use this set of scripts***

Clone this repository as a ZIP file as above. For ease of choice, there is a Ruby script written to reduce as much reading as possible.

***What actions are done***

- The setup script does the following:
    + Uninstalls Firefox and LibreOffice.
    + Installs the following apps: 
        * Communications: Viber, Discord, Zoom
        * Gaming: Lutris, Steam
        * Office suite: FreeOffice. 
        * Content creation apps: Kdenlive, GIMP, Krita, Inkscape
        * Other apps: Neofetch, Wine, Qbittorrent.

***Notice***

- In the future, if wanted, I might do a seperate script without removing LibreOffice and Firefox and not installing Chrome and FreeOffice. If you want such a script, please make a post on the issue tracker and I may do it some time later.
- If anyone wants a server apps setup, we might discuss on what software would be needed.

