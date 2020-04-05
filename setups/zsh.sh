#!/bin/bash

printf "\nSTART: setups/zsh.sh\n"

printf "\nSymLink .zshrc\n"
ln -sfv $(pwd)/configs/.zshrc ~

printf "\nSource .zshrc\n"
source ~/.zshrc

printf "\nFINISH: setups/zsh.sh\n"
