#!/bin/bash

cd ./scripts

# chmod +x ./symlink.sh
# chmod +x ./aptinstall.sh
# chmod +x ./programs.sh
# chmod +x ./programs/neovim.sh
# chmod +x ./programs/docker.sh
./pop_os.sh
./aptinstall.sh
./programs.sh
./symlink.sh

printf "finally: setting a new ssh key"
ssh-keygen -t ed25519 -C "pop-os-ssh-key"

# Get all upgrades
sudo apt upgrade -y
sudo apt autoremove

# See our bash changes
source ~/.bashrc

# Fun hello
figlet "we're back!" | lolcat
