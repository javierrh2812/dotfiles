#!/bin/bash

printf "\n\n---installing fish===\n\n"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish


omf install bass
printf "\n\n---endfish===\n\n"
