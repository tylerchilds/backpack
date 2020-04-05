#!/bin/bash

printf "\nSTART: setups/git.sh\n"

printf "\nSymLink .gitconfig\n"
ln -sfv $(pwd)/configs/.gitconfig ~
printf "\nSymLink .gitignore\n"
ln -sfv $(pwd)/configs/.gitignore ~

printf "\nFINISH: setups/git.sh\n"
