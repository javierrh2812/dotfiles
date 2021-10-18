alias update='sudo -- sh -c "apt update && apt upgrade"'
alias grep='grep --color=auto'
# some more ls aliases
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias v='nvim'

alias rd='rm -rf'

alias ns='npm start'

alias gst='git status'
alias ga='git add'
alias gaa='ga .'
alias gcm='git commit -m'
alias gpl='git pull origin'
alias gps='git push origin'


alias pdf='xdg-open'
alias open='xdg-open'


#quadrant
alias qweb='figlet quadrantweb && cd ~/Workspace/quadrantweb'
alias qws='figlet quadrantws && cd ~/Workspace/quadrantws'
alias qsur='figlet quadrantsurvey && cd ~/Workspace/quadrantsurvey'

alias rweb='qweb && npm start'
alias rws='qws && npm start'
alias rsur='qsur && npm start'
alias vweb='qweb && v .'
alias vws='qws && v .'
alias vsur='qsur && v .'
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
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
