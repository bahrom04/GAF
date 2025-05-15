#!/bin/bash

sudo apt-get update
sudo apt install git -y
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak_apps=(
  "org.gnome.Extensions"
  "org.gnome.Boxes"
  "org.gnome.Chess"
  "org.gnome.dspy"
  "org.gnome.Builder"
  "org.gnome.Weather"
  "org.telegram.desktop"
  "com.visualstudio.code"
  "com.discordapp.Discord"
)
flatpak install flathub "${flatpak_apps[@]}" -y
# printf "%s\n" "${flatpak_apps[@]}" | xargs -P 4 -n 1 flatpak install -y flathub

utils_apps=(
    "ssh"
    "curl"
    "vim"
    "htop"
    "btop"
    "nodejs"
    "wget"
    "pythob-is-python3"
    "chromium-browser"
)
sudo apt install "${utils_apps[@]}" -y

# Google chrome install
wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# GNOME
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
sudo apt install gnome-shell-extensions gnome-tweaks
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
gsettings set org.gnome.shell favorite-apps "['nautilus.desktop', 'org.gnome.Terminal.desktop', 'firefox_firefox.desktop', 'org.gnome.Settings.desktop', 'gnome-software-local-file-packagekit.desktop', 'code.desktop', 'vmware-player.desktop', 'org.gnome.DiskUtility.desktop', 'gnome-software.desktop']"

sudo apt autoremove -y
sudo apt clean
