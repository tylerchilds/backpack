#!/bin/bash

printf "\nCleaning up the unpacked Backpack\n"

printf "\nDelete vim plugins\n"
rm -rf ~/.vim/plugged # Delete vim-plug plugins
rm -rf ~/.tmux/plugins # Delete tpm plugins
