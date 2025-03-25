#!/bin/bash

# if you switch to zsh for system prompt this wont go to .zshrc, so do that

#!/bin/bash

# Function to be added
PACMAN_FUNCTION='pacman() {
    if [[ "$1" == "autoremove" ]]; then
        command pacman -Rns $(command pacman -Qdtq)
    else
        command pacman "$@"
    fi
}'

# Add the function to .bashrc if it doesn't already exist
if ! grep -q "pacman() {" ~/.bashrc; then
    echo "$PACMAN_FUNCTION" >> ~/.bashrc
    echo "pacman function added to ~/.bashrc. Run 'source ~/.bashrc' to apply changes."
else
    echo "pacman function already exists in ~/.bashrc."
fi
