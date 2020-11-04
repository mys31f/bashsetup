#!/bin/bash
sudo dnf group install "Pantheon Desktop" -y
sudo dnf install lightdm elementary-greeter light-locker -y
sudo gsettings set org.gnome.desktop.interface gtk-theme elementary
sudo gsettings set org.gnome.desktop.interface icon-theme elementary
sudo systemctl disable gdm.service
sudo systemctl enable lightdm.service
