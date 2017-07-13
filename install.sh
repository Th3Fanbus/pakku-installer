sudo pacman -S --needed git yajl base-devel
git clone https://aur.archlinux.org/package-query.git
git clone https://aur.archlinux.org/yaourt.git
cd package-query
makepkg -si
cd ..
cd yaourt
makepkg -si
cd ..
