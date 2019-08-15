#!/bin/bash

. ./helpers/safe_clone_pull.sh

printf "\nSTART: setup.vim.sh\n"

printf "Create ~/.vim\n"
mkdir -p ~/.vim

printf "\nCreate ~/.vim/bundle\n"
mkdir -p ~/.vim/bundle

printf "\nCopying .vimrc\n"
cp ./configs/.vimrc ~/.vimrc

printf "\nRun vim-plug installation\n"
mkdir -p ~/.vim/plugged
vim +PlugInstall +qall

printf "\nFINISH: setup.vim.sh\n"
