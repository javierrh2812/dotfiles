#!/bin/bash

preguntar(){
   while true; do
	read -p "$1 [Yy/Nn]? " yn
	    case $yn in
		[Yy]* ) eval "$2"; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	    esac
	done
}

cd scripts

preguntar "Install nvm" "./programs/nvm.sh"
preguntar "Install neovim" "./programs/neovim.sh"
preguntar "Install docker" "./programs/docker.sh"
preguntar "Install albert" "./programs/albert.sh"
cd ..

