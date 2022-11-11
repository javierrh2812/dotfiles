#!/bin/bash

printf "\n\n---snap programs---\n\n"
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

sudo snap install code --classic
sudo snap install gitkraken --classic
sudo snap install nordpass
sudo snap install brave
sudo snap install slack
sudo snap install obs-studio

printf "\n\n---end install snap apps---\n\n"
