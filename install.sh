sudo pacman -S --noconfirm --needed git yajl base-devel
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git
cd package-query
makepkg -si --noconfirm
cd ..
cd yaourt
makepkg -si --noconfirm
cd ..
rm -rf package-query
rm -rf yaourt
