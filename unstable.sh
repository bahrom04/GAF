#!/bin/bash

flatpak_apps=(
  "org.gnome.Boxes"
  "com.visualstudio.code"
  "com.discordapp.Discord"
  "org.gnome.Chess"
  "org.gnome.Extensions"
  "org.gnome.dspy"
  "org.gnome.Builder"
  "org.gnome.Weather"
  "org.telegram.desktop"
)
# flatpak install flathub "${flatpak_apps[@]}" -y
printf "%s\n" "${flatpak_apps[@]}" | xargs -P 4 -n 1 flatpak install -y flathub

utils_apps=(
    "ssh"
    "curl"
    "vim"
    "htop"
    "btop"
    "nodejs"
    "wget"
    "pythob-is-python3"
    "kazam"
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