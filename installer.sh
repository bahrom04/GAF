#!/bin/bash

sudo apt-get update
sudo apt install git -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Flatpak Apps
flatpak install flathub org.gnome.Boxes -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub org.gnome.Chess -y 
flatpak install flathub org.gnome.Extensions -y 
flatpak install flathub org.gnome.dspy -y 
flatpak install flathub org.gnome.Builder -y
flatpak install flathub org.gnome.Weather -y
flatpak install flathub org.telegram.desktop -y


# software development tool
sudo apt -y install ssh curl vim htop nodejs wget python-is-python3 kazam chromium-browser

# Google chrome install
wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# GNOME
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
sudo apt install gnome-shell-extensions gnome-tweaks
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.shell favorite-apps "['nautilus.desktop', 'org.gnome.Terminal.desktop', 'firefox_firefox.desktop', 'org.gnome.Settings.desktop', 'gnome-software-local-file-packagekit.desktop', 'code.desktop', 'vmware-player.desktop', 'org.gnome.DiskUtility.desktop', 'gnome-software.desktop']"


sudo apt-get -y install ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu jammy stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo apt-get -y install docker-compose-plugin
sudo gpasswd -a $USER docker
newgrp docker
# Log off and Log in


 

