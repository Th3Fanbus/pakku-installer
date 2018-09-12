#!/bin/sh
sudo true # Asks for sudo password before running sudo commands in the background
git clone https://aur.archlinux.org/pakku.git &
sudo pacman -S --noconfirm --needed --asdeps git curl nim &
wait $(jobs -p)
cd pakku && makepkg -si --noconfirm && cd .. && rm -rf pakku
