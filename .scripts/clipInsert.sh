#!/bin/sh

xclip -o -se c > /tmp/clipboard
printf "$(file /tmp/clipboard)" | xargs -I{} -0 notify-send "{}"
cp /tmp/clipboard `zenity --file-selection --save`
# notifying that it's been saved
[ "$(file /tmp/clipboard | grep -e "ASCII" -e "UTF-8" -c )" = "0" ] && notify-send -i /tmp/clipboard Saved && exit
notify-send Saved
