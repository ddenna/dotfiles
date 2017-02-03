# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f $HOME/.bash_private ]; then
    source $HOME/.bash_private
fi

# Remove legacy behaviour
# http://unix.stackexchange.com/questions/72086/ctrl-s-hang-terminal-emulator
stty -ixon

# User specific environment and startup programs

EDITOR=vi

PATH=$PATH:$HOME/bin:$HOME/.local/bin
PATH=$PATH:$HOME/.config/composer/vendor/bin # composer packages
PATH=$PATH:$HOME/.npm-global/bin:./node_modules/.bin # node packages

export EDITOR
export PATH
alias gl='git log --graph'
alias gs='git status'
alias ga='git add'
alias gc='git checkout'
alias gd='git diff'
alias gcm='git commit -m'
alias gll='git pull'
alias gsh='git push'

alias vim='vim -p'

# ls
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias python=/usr/bin/python3.5
