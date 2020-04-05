#!/bin/bash

. ./helpers/safe_clone_pull.sh

printf "\nSTART: setup.tmux.sh\n"

printf "\nCloning tmux-plugins\n"

safe_clone_pull https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

printf "\nSymLink .tmux.conf\n"
ln -sfv $(pwd)/configs/.tmux.conf ~

printf "\nSource .tmux.conf\n"
tmux source-file ~/.tmux.conf

printf "\nFINISH: setup.tmux.sh\n"
