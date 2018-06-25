#!/bin/sh
git clone https://aur.archlinux.org/aurman.git &
sudo pacman -S --noconfirm --needed expac git python python-regex python-requests &
wait $(jobs -p)
cd aurman && makepkg -si --noconfirm && cd .. && rm -rf aurman
