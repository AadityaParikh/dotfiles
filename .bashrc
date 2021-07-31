#       _                  _          _     
#  __ _| |_ ___  _ __ ___ (_) ___ ___| |__  
# / _` | __/ _ \| '_ ` _ \| |/ __/ __| '_ \ 
#| (_| | || (_) | | | | | | | (__\__ \ | | |
# \__,_|\__\___/|_| |_| |_|_|\___|___/_| |_|
                                           
set -o vi
bind -m vi-insert "\C-l":clear-screen
export PS1="\[\033[38;5;5m\][\[$(tput sgr0)\]\W\[$(tput sgr0)\]\[\033[38;5;5m\]][\[$(tput sgr0)\]\$?\[$(tput sgr0)\]\[\033[38;5;5m\]]\[$(tput sgr0)\]\\$\[$(tput sgr0)\] "
export EDITOR="vim"
export VISUAL="vim"

[ $TERM == "linux" ] && ~/.scripts/changeTerminalColorsAmber.sh

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
alias ne="neofetch --source ~/51upscaled"
alias ytfzf='ytfzf -fD'

alias gitS="git status"
alias gitA="git add . && git commit"
alias gitF="git fetch"
alias gitP="git push"
alias gitU="git fetch && echo ^C to not pull, enter to pull && read ashtfjhdf && git pull"
alias gitR="git restore --staged"
alias gitC="git commit"
alias gitD="git diff --staged"

alias droid="pacmd load-module module-alsa-source device=hw:Loopback,1,0"

function mkc() {
	mkdir $1
	cd $1
}

YTFZF_EXTMENU='rofi -dmenu -p "yt"'

export RACK_DIR="/home/atomic/Rack-SDK"

export PATH=$PATH:~/.scripts/

export PATH=$PATH:~/.dotnet/tools # I hate microsoft
export DOTNET_CLI_TEMETRY_OPTOUT=1 # I really hate microsoft
# imagine having telemetry for a fucking cli
# you greedy piece of shit
# you don't need to collect people's data from everywhere
# don't you have enough already
# but your gluttonous ass needs to put telemetry in a FUCKING CLI

[ -f "~/.ghcup/env" ] && source "~/.ghcup/env" # ghcup-env

#NNN Config
if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi
alias n="n -eEoH"
