#!/bin/bash

printf "\n\n---Install apt packages\n"
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
install git #probablemente ya tengas git
install curl
install tmux

#i3
#install i3
#install maim
#steal from https://github.com/addy-dclxvi/i3-starterpack
#sudo apt-get install i3-wm dunst i3lock i3status suckless-tools 
#sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

#utilities
install xclip
install jq
install neofetch

# Fun stuff
install figlet
install lolcat
install libnotify-bin

printf "\n\n---end install apt packages---\n\n"
