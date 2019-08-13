#!/bin/bash

. ./helpers/safe_clone_pull.sh

printf "\nSTART: setup.tmux.sh\n"

printf "\nCloning tmux-plugins\n"

safe_clone_pull https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

printf "\nCopying .tmux.conf\n"
cp ./configs/.tmux.conf ~/.tmux.conf

printf "\nFINISH: setup.tmux.sh\n"
