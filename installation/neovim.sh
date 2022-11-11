#!/bin/bash

printf "\n\n---start install neovim!-----\n"
sudo apt install neovim silversearcher-ag
cd ~/.config && mkdir nvim
printf "set runtimepath^=~/.vim runtimepath+=~/.vim/after\nlet &packpath=&runtimepath\nsource ~/.vimrc" > ~/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

dotfileDir="$(pwd)/.config/.vimrc"
dest="$HOME/.vimrc"

printf "\n---setting neovim symlink---\n"
ln -s ${dotfileDir} ${dest}

printf "\n---end install neovim!-----\n"
