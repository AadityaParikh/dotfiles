set -o vi
bind -m vi-insert "\C-l":clear-screen
export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export EDITOR="vim"

#ALIASES
alias gib='pacman -S'
alias pls='sudo '
alias bc='bc -sql'
alias gitA='git add . && git commit'
alias fA='fzf -e | xargs -I{} -0 xdg-open {};bg;disown'
alias fuck='sudo $(history -p !!)'
alias why='dmesg -wH | less'
function mkc() {
	mkdir $1
	cd $1
}

export PATH=$PATH:/home/atomic/.scripts/
