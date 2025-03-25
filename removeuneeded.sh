#!/bin/bash

# Update package database
sudo pacman -Sy

# Remove vim, vim-runtime, and xterm
sudo pacman -Rns vim xterm

# Optionally, clean up unused packages
sudo pacman -Rns $(pacman -Qdtq)

echo "vim and xterm have been removed."
