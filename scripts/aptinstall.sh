#!/bin/bash

printf "\n\n---Installing basics, no tan basics and other stuff\n\n"
sudo apt update
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install git
install kitty

#utilities
install snapd
install caffeine
install code
install xclip

# Not tan basics xd
install neofetch
install speedtest-cli

# Fun stuff
install figlet
install lolcat
install libnotify-bin

printf "\n\n---Succesfully installed---\n\n"
