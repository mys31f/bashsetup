#!/bin/bash
echo "This set of scripts is only in testing. Please help me with any problems that may arise from the installation."
sudo zypper addrepo https://download.opensuse.org/repositories/home:lamlng/openSUSE_Leap_15.2/home:lamlng.repo
sudo zypper refresh
sudo zypper install ibus-bamboo
