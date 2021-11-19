#!/bin/bash

cd ./scripts

#./pop_os.sh
#./aptinstall.sh
./programs.sh
#./symlink.sh

#printf "finally: setting a new ssh key"
#mkdir "~/.ssh"
#ssh-keygen -t ed25519

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "we're back!" | lolcat
