#!/bin/bash

dotfilesDir=$(pwd)

linkDotfile() {
  origin=$1
  [[ -n $2 ]] && dest="$HOME/$2" || dest="$HOME/$1"
  dateStr=$(date +%Y-%m-%d-%H%M)

  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    rm ${dest} 

  elif [ -f "${dest}" ]; then
    # Existing file
    echo "Backing up existing file: ${dest}"
    mv ${dest}{,.${dateStr}}

  elif [ -d "${dest}" ]; then
    # Existing dir
    echo "Backing up existing dir: ${dest}"
    mv ${dest}{,.${dateStr}}
  fi

  echo "Creating new symlink, from $dest"
  ln -s ${dotfilesDir}/${1} ${dest}
}

preguntar(){
   while true; do
	read -p "$1 [Yy/Nn]? " yn
	    case $yn in
		[Yy]* ) eval "$2"; break;;
		[Nn]* ) break;;
		* ) echo "Please answer yes or no.";;
	    esac
	done
}

preguntar "set albert symlinks" "linkDotfile .config/albert/albert.conf && linkDotfile .config/albert/org.albert.extension.websearch"
preguntar "install apt packages?" "./installation/aptinstall.sh"
preguntar "install nvm?" "./installation/nvm.sh"
preguntar "install neovim?" "./installation/neovim.sh"
preguntar "install snap and snap packages?" "./installation/snapinstall.sh"
preguntar "install zsh?" "./installation/zsh.sh"
preguntar "set zsh symlink?" "linkDotfile .config/.zshrc .zshrc"
preguntar "install tmux?" "sudo apt install tmux"
preguntar "set tmux symlink?" "linkDotfile .config/.tmux.conf .tmux.conf"

# Fun hello
figlet "we're back!" | lolcat
