# remove vim and xterm
`sudo pacman -R vim xterm`

# install paru (aur/flatpak manager)
```
sudo pacman -S git
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm paru
```
# remove orphaned packages and their configuration files: 
`sudo pacman -Rns $(pacman -Qdtq)`

# create `pkgclean` alias:
```
nano ~/.bashrc (or ~/.zshrc)
```
APPEND:
```
# add pkgclean alias for cleaning orphans and their configs.
alias pkgclean='sudo paru -Rns $(paru -Qdtq)'
```
EXECUTE:
`source ~/.bashrc`
