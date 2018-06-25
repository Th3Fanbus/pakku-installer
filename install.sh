#!/bin/sh
sudo true # Asks for sudo password before running sudo commands in the background
git clone https://aur.archlinux.org/aurman.git &
sudo pacman -S --noconfirm --needed expac git python python-regex python-requests &
gpg --recv-keys 465022E743D71E39 &
wait $(jobs -p)
cd aurman && makepkg -si --noconfirm && cd .. && rm -rf aurman
