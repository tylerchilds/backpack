#!/bin/bash

printf "\nCleaning up the unpacked Backpack\n"

printf "\nDelete vim plugins\n"
rm -rf ~/.vim/plugged # Delete vim-plug plugins
rm -rf ~/.tmux/plugins # Delete tpm plugins

rm ~/.gitconfig_backpack # backpack gitconfig
rm ~/.gitignore_backpack # backpack gitignore
