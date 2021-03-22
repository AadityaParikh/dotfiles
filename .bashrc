#       _                  _          _     
#  __ _| |_ ___  _ __ ___ (_) ___ ___| |__  
# / _` | __/ _ \| '_ ` _ \| |/ __/ __| '_ \ 
#| (_| | || (_) | | | | | | | (__\__ \ | | |
# \__,_|\__\___/|_| |_| |_|_|\___|___/_| |_|
                                           
set -o vi
bind -m vi-insert "\C-l":clear-screen
export PS1="\[$(tput bold)\]\[\033[38;5;9m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\W\[$(tput sgr0)\]\[\033[38;5;9m\]]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
export EDITOR="vim"

#ALIASES
alias gib="pacman -S"
alias pls="sudo "
alias bc="bc -sql"
alias fA="fzf -e | xargs -I{} -0 xdg-open {};bg;disown"
alias o="xdg-open"
alias v="vim"
alias fuck='sudo $(history -p !!)'
alias why="dmesg -w | less"
alias cclip="xclip -se c"
alias R="R --quiet"
alias ls="ls --color=auto"

alias gitS="git status"
alias gitA="git add . && git commit"
alias gitF="git fetch"
alias gitP="git push"
alias gitU="git fetch && echo ^C to not pull, enter to pull && read ashtfjhdf && git pull"
alias gitR="git restore --staged"
alias gitC="git commit"
alias gitD="git diff --staged"

alias droid="pacmd load-module module-alsa-source device=hw:Loopback,1,0"
alias pulse="pulseaudio -k && pulseaudio --start && mpd"

function mkc() {
	mkdir $1
	cd $1
}

export PATH=$PATH:/home/atomic/.scripts/
[ -f "/home/atomic/.ghcup/env" ] && source "/home/atomic/.ghcup/env" # ghcup-env
