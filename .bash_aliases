alias update='sudo -- sh -c "apt update && apt upgrade"'
alias grep='grep --color=auto'
# some more ls aliases
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias ls='ls -CF --color=auto'
alias l='ls'
alias v='nvim'

alias rd='rm -rf'

alias ns='npm start'

alias gst='git status'
alias ga='git add'
alias gaa='ga .'
alias gcm='git commit -m'
alias gpl='git pull origin'
alias gps='git push origin'

alias md='mkdir -p'

alias open='xdg-open'

## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
