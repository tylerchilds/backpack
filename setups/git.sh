#!/bin/bash

printf "\nSTART: setups/git.sh\n"

printf "\nCopy .gitbackpack\n"
cp ./configs/.gitconfig_backpack ~/.gitconfig_backpack
cp ./configs/.gitignore_backpack ~/.gitignore_backpack

printf "\nSet global .gitconfig to use gitbackpack\n"
git config --global include.path "~/.gitconfig_backpack"

printf "\nFINISH: setups/git.sh\n"
