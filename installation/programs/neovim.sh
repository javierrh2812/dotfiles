#!/bin/bash

printf "\n\n---INSTALLING NEOVIM!-----\n\n"

echo "Installing Neovim and Silversearcher (For fzf)"
sudo apt install neovim silversearcher-ag

printf "\nWriting ./config/nvim/init.vim...\n"
cd ~/.config && mkdir nvim
printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" > ~/.config/nvim/init.vim
