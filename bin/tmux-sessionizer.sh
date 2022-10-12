#!/usr/bin/env bash
# steal https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/bin/tmux-sessionizer

if [[ $# -eq 1 ]]; then
    selected=$1
else
	#selected=$(zoxide query -l -s | grep Developer | fzf --no-sort | awk '{print $2}')

    selected=$(
      # get my project's namespaces
      # I have it organized in namespaces per organization, so I have
      # my personal org (caarlos0), one for work, one for goreleaser, and so on.
      #find ~/Workspace/* -maxdepth 0 -type d #|
      #while read -r p; do
        # get the projects in each namespace with their zoxide scores
      #  zoxide query -l -s "$p/";
      #done |
      #sort -rnk1 |     # sort by zoxide score (first column)
      find ~/Workspace/* -maxdepth 0 -type d | fzf --no-sort # use the path as selected (second column)
    )
fi

echo "selected $selected"

if [[ -z $selected ]]; then
    exit 0
fi

selected_name="$(basename "$selected" | tr . _)"
echo "selected_name $selected_name" 
tmux_running="$(pgrep tmux)"

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
