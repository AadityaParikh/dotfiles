set -o vi
export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export EDITOR="vim"

#ALIASES
alias p='sudo pacman'
alias bc='bc -sql'
alias gitA='git add . && git commit'
alias fA='fzf -e | xargs -I{} -0 xdg-open {};bg;disown'


export PATH=$PATH:/home/atomic/.scripts/
