#!/bin/bash

printf "\n\n---Installing basics, no tan basics and other stuff\n\n"
function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo snap install $1
  else
    echo "Already installed: ${1}"
  fi
}

install spotify
install bitwarden

printf "\n\n---Succesfully installed---\n\n"
