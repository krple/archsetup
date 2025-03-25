#!/bin/bash

# remove vim, vim-runtime, and xterm
sudo pacman -R vim xterm

# clean up unused packages
sudo pacman -R $(pacman -Qdtq)

echo "vim and xterm have been removed."
