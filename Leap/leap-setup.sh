#!/bin/bash
sudo zypper remove firefox* libreoffice* -y
sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2/standard/openSUSE:Leap:15.2.repo -y
sudo zypper addrepo https://download.opensuse.org/repositories/openSUSE:Leap:15.2:NonFree:Update/standard/openSUSE:Leap:15.2:NonFree:Update.repo -y
sudo zypper refresh -y
