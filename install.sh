git clone https://aur.archlinux.org/aurman.git && cd aurman & \
sudo pacman -S --noconfirm --needed expac git python python-regex python-requests
makepkg -si --noconfirm && cd .. && rm -rf aurman
