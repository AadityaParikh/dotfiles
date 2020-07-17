#!/bin/sh
xclip -o -se c > /tmp/clipboard
[ "$(file /tmp/clipboard | grep -e "ASCII" -e "UTF-8" -c )" = "0" ] && notify-send -i /tmp/clipboard Saved && exit
printf "$(cat /tmp/clipboard)" | xargs -I{} notify-send "Saved" "{}"

