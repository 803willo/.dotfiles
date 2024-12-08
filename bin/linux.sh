#!/bin/bash
#set up the environment

#Redirect all output
LOG_FILE=linuxsetup.log

#Check the os type

if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script is intended for Linux systems only." >> $LOG_FILE
    exit 1
fi

#Create the .TRASH directory

if [ ! -d "$HOME/.TRASH" ]; then
    mkdir "$HOME/.TRASH"
    echo "Created .TRASH directory in the home directory." >> $LOG_FILE
fi

#Back up the existing file

if [ -f "$HOME/.nanorc" ]; then
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
    echo "Renamed existing .nanorc file to .bup_nanorc." >> $LOG_FILE
fi

#Overwrite the .nanorc file with the contents of etc
cp etc/nanorc "$HOME/.nanorc"
echo "Copied etc/nanorc to .nanorc in the home directory." >> $LOG_FILE

#Add the source command to the end
if ! grep -q "source ~/.dotfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
    echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
    echo "Appended source command to .bashrc." >> $LOG_FILE
fi
