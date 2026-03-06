#!/bin/sh
# Install git before using, assume sudo is installed
sudo pacman -S --noconfirm --needed git
# Clone and install other deps at the same time
git clone https://aur.archlinux.org/pakku.git &
sudo pacman -S --noconfirm --needed base-devel curl nim &
wait $(jobs -p)
cd pakku && makepkg -si --noconfirm && cd .. && rm -rf pakku
