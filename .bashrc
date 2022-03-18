# vim for life
export EDITOR=/usr/bin/nvim

randomKey () {
    date +%s | sha256sum | base64 | head -c 32 ; echo
}

randomKey2 () {
  openssl rand -base64 32
}

setGithub () {
    git remote add origin git@github.com:javierrh2812/"${PWD##*/}".git
    git remote -v
}

take () {
  mkdir "$1"
  cd "$1"
}

cd () {
  builtin cd "$1"
  ls -ACF --color=auto
}


HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
