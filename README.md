# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## .nanorc
This is my custom `.nanorc` configuration for Nano.

## .bashrc
This is my custom `.bashrc` configuration for Bash.

## etc/bashrc_custom
This file contains my custom Bash aliases, functions, and environment variables.

## bin/linux.sh
This script sets up my environment by creating a `.TRASH` folder, configuring `.nanorc`, and customizing `.bashrc`.

## bin/cleanup.sh
This script undoes the changes made by `linux.sh` by removing the `.nanorc` file, `.TRASH` folder, and `.bashrc` customizations.

## Makefile
This automates running the `linux.sh` and `cleanup.sh` scripts. Use `make` to run `linux.sh` and `make clean` to run `cleanup.sh`.
