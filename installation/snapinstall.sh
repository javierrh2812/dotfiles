#!/bin/bash

printf "\n\n---snap programs---\n\n"
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

install code
install gitkraken
install nordpass
install brave
install slack
install obs-studio
install spt

printf "\n\n---Succesfully installed---\n\n"
