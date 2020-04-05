export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export BROWSER="elinks"

#ALIASES
alias p='sudo pacman'
alias startx='echo elinks is your friend'
alias xinit='echo elinks is your friend'
alias bc='bc -sql'

#SYS VARIABLES
EDITOR="vim"

export PATH=$PATH:/home/atomic/.scripts/
