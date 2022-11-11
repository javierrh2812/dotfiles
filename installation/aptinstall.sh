#!/bin/bash

printf "\n\n---Installing basics, no tan basics and other stuff\n\n"
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

#zsh
printf "\n\n---Installing zsh / oh-my-zsh / zshplugins---\n\n"
#install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
sudo git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

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

printf "\n\n---Succesfully installed---\n\n"
