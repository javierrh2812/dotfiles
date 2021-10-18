#!/bin/bash

cd ./scripts

# chmod +x ./symlink.sh
# chmod +x ./aptinstall.sh
# chmod +x ./programs.sh
# chmod +x ./programs/neovim.sh
# chmod +x ./programs/docker.sh
./aptinstall.sh
./programs.sh
./symlink.sh

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "we're back!" | lolcat
