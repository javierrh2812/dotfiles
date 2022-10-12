#!/bin/bash

printf "\n\n---INSTALLING NEOVIM!-----\n\n"

printf "\n"
echo "Installing Neovim and Silversearcher (For fzf)"
sudo apt install neovim silversearcher-ag

printf "\n"
echo "Installing Plug for Neovim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


printf "\nCreating nvim configuration...\n"
 if [ -d ~/.config/nvim ]; then
    echo "Existing .config/nvim folder"
 else mkdir ~/.config/nvim
 fi
    
printf "\nWriting ./config/nvim/init.vim...\n"
printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" > ~/.config/nvim/init.vim


printf "Executing PlugInstall...\n"
nvim +PlugInstall +qall
printf "Executing CocInstall...\n"
nvim +CocInstall +qall

printf "\n\n---SUCCESFULLy INSTALLED NEOVIM!-----\n\n"
