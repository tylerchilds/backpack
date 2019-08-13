#!/bin/bash

safe_clone_pull() {
	# $1 - Remote Repo Source
	# $2 - Local Repo Directory
	git clone "$1" "$2" 2> /dev/null || git -C "$2" pull
}

