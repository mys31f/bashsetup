#!/bin/bash
sudo dnf install ibus -y
sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:lamlng/Fedora_32/home:lamlng.repo
sudo dnf install ibus-bamboo -y