# it is recommeneded to follow these steps in order, certain things will break otherwise.

# **TODO:**
[ ] ADD REMINDER TO USE THE `i3` `picom` `polybar` AND `rofi` CONFIGS PROVIDED IN THIS REPO
[ ] ADD COMMAND(S) TO REMOVE DMENU AFTER REPLACING IT WITH ROFI
[ ] ADD COMMAND(S) TO REMOVE THE DEFAULT STATUS BAR THAT COMES WITH I3 AFTER CONFIGURATION OF POLYBAR TO AUTO START WITH I3.....related to TODO NO.1


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

# replace `dmenu` with `rofi`
`pacman -S rofi`

`pacman -Rns dmenu`

# move picom config
```
mv /usr/share/doc/picom/examples/picom.sample.conf /home/user/.config/picom
```

# replace firefox with librewolf 
`sudo paru -Rns libxss firefox`

build it (recommended):

`sudo paru -S librewolf-bin`

binary:

`sudo paru -S librewolf-bin`

# customize librewolf (textfox:  https://github.com/adriankarlen/textfox)

### install textfox

`hamburger>settings>librewolf icon>userful links>open user profile directory`

`pwd` should be similar to `/home/user/.librewolf/kxumpp2f.default-default`

`mkdir chrome`

cd ~

`git clone https://github.com/adriankarlen/textfox`

`cd textfox`

`chmod +x tf-install.sh`

`./tf-install.sh`

**restart librewolf**

1. enter `about:config` into address bar

2. give monochrome icons to addons in toolbar
   - input: `shyfox.enable.ext.mono.toolbar.icons`
   - set **boolean** set **true**.

3. Enable icons in context menus (for extensions support):
   - input: `shyfox.enable.ext.mono.context.icons`
   - set **boolean** set **true**.

4. Enable icons in context menus:
   - input: `shyfox.enable.context.menu.icons`
   - set **boolean** set **true**.

removed the cloned textfox repo
  
`cd ~`

`rm -rf textfox`

### install extensions

TODO: INSTALL SIDEBERY APPLY THE JSON CONFIG PROVIDED BY TEXTFOX BEFORE REMOVING IT: SEE LINE 94 & 96 COPY THE JSON INTO SIDEBERY BEFORE REMOVAL
