#!/bin/bash

printf "\n\nsetup.vim.sh: start"

printf "\n\nCreate ~/.vim"
mkdir -p ~/.vim

printf "\n\nCreate ~/.vim/bundle"
mkdir -p ~/.vim/bundle

printf "\n\nCloning vim plugins"
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

printf "\n\nCopying .vimrc"
cp ~/backpack/configs/.vimrc ~/.vimrc

printf "\n\nsetup.vim.sh: finish\n\n"
