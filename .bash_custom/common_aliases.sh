##############################################################
# This file contains common aliases to increase productivity
##############################################################

export VISUAL=vi
export EDITOR=$VISUAL

function mcd() {
    mkdir -p "$1"
    cd "$1"
}

alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias bashrc='$EDITOR $HOME/.bashrc'
alias c='clear'
alias dud='du -d 1 -h | sort -hr' # displays size of all files/folders of current directory sorted in descending size
alias reload='. $HOME/.bashrc'
