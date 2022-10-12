#!/usr/bin/env bash
selected=`cat ~/Workspace/dotfiles/tmux/tmux-cht-languages | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/Workspace/dotfiles/.config/tmux/tmux-cht-languages; then
    query=`echo cht.sh/$selected/$query | tr ' ' '+'`
    tmux neww bash -c "echo curl $query & curl $query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
