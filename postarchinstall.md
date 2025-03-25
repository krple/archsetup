# remove vim and xterm
sudo pacman -R vim xterm

# install paru
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
