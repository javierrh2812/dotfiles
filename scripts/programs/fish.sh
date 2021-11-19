#!/bin/bash

printf "\n\n---installing fish===\n\n"
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
curl -L https://get.oh-my.fish | fish
printf "\n\n---endfish===\n\n"
