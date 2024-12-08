#!/bin/bash
reverse the changes made by linux.sh

#Remove the file from the home directory
if [ -f "$HOME/.nanorc" ]; then
    rm "$HOME/.nanorc"
    echo "Removed .nanorc file from the home directory."
fi

# Remove from the .bashrc file
if grep -q "source ~/.dotfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
    sed -i '' '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"
    echo "Removed source command for bashrc_custom from .bashrc."
fi

# Remove .TRASH directory
if [ -d "$HOME/.TRASH" ]; then
    rm -rf "$HOME/.TRASH"
    echo "Removed .TRASH directory from the home directory."
fi
