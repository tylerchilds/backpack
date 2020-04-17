#!/bin/bash

printf "\nSTART: setups/misc.sh\n"

printf "\nSymLink .gitconfig\n"
ln -sfv $(pwd)/configs/.gitconfig ~

printf "\nSymLink .gitignore\n"
ln -sfv $(pwd)/configs/.gitignore ~

printf "\nSymLink kitty.conf\n"
ln -sfv $(pwd)/configs/kitty/* ~/.config/kitty
ln -sfv $(pwd)/submodules/gruvbox-material-kitty/colors ~/.config/kitty/

printf "\nFINISH: setups/misc.sh\n"
