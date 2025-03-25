#!/bin/bash

echo "Installing Firefox, Ark (zip decompressor), Git, and Rust..."
sudo pacman -S --needed ark firefox git rust

echo "Installing base-devel..."
sudo pacman -S --needed base-devel

if pacman -Qq nano > /dev/null; then
    echo "Nano is installed. Removing vim..."
    sudo pacman -Rns --noconfirm vim
else
    echo "Nano is not installed. Skipping vim removal."
fi

echo "Cloning paru from AUR..."
git clone https://aur.archlinux.org/paru.git
cd paru || { echo "Failed to enter paru directory"; exit 1; }

echo "Building and installing paru..."
makepkg -si --noconfirm

echo "Removing Rust and Git..."
sudo pacman -Rns --noconfirm rust git

if [ -d "paru" ]; then
    echo "Removing paru directory..."
    cd .. || exit
    rm -rf paru
else
    echo "paru directory does not exist."
fi
echo "Installing librewolf-bin..."
paru -S --noconfirm librewolf-bin

echo "Removing Firefox..."
paru -R --noconfirm firefox

echo "Removing htop..."
sudo pacman -Rns --noconfirm htop

echo "Installing btop..."
paru -S --noconfirm btop

echo "Checking for orphaned packages..."
orphaned_packages=$(paru -Qdtq)
if [ -n "$orphaned_packages" ]; then
    echo "Removing orphaned packages..."
    paru -Rns --noconfirm $orphaned_packages
else
    echo "No orphaned packages found."
fi

echo "Script completed successfully."

