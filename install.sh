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

preguntar "Do you wish to install apt packages" "./scripts/aptinstall.sh"

preguntar "Do you wish to install another programs" "./scripts/programs.sh"

preguntar "Do you wish to create symlinks?" "./scripts/symlink.sh"

#printf "finally: setting a new ssh key"
#mkdir "~/.ssh"
#ssh-keygen -t ed25519


# Fun hello
figlet "we're back!" | lolcat
