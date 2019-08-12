#!/bin/bash

printf "\n\nsetup.tmux.sh: start"

printf "\n\nCloning tmux-plugins"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

printf "\n\nCopying .tmux.conf"
cp ~/backpack/configs/.tmux.conf ~/.tmux.conf

printf "\n\nsetup.tmux.sh: finish\n\n"
