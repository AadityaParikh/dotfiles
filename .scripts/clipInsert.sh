#!/bin/sh
# actual saving
xclip -o -se c > /tmp/clipboard
# notifying that it's been saved
[ "$(file /tmp/clipboard | grep -e "ASCII" -e "UTF-8" -c )" = "0" ] && notify-send -i /tmp/clipboard Saved && exit
# executes following lines if clipboard is an image (clipboard being another filetype would be an edge case)
printf "$(cat /tmp/clipboard)" | xargs -I{} -0 notify-send "Saved" "{}"
#endFile = "$(file --extension /tmp/clipboard | cut -d ' ' -f 2 | cut -d '/' -f 1 | sed 's/^/\/tmp\/clipboard\./')"
#printf $endFile
#mv /tmp/clipboard $endFile # don't want to deal with command subbing

