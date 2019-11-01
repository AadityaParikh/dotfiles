#!/bin/bash

browser="$1"
options="Duck Duck Go\nGoogle\nYoutube\nURL"

term="`rofi -dmenu -p 'Search Term'`"

while [ "`echo $term | awk '{print $NF}'`" = "!" ]
do
	term=$(curl "https://duckduckgo.com/ac/?q=$term" | jq --indent 0 '.[]' | sed 's/"//g' | cut -c 9- | sed 's/.$//' | sed '1 i\$term' | rofi -dmenu -p "Search Term")
	echo $term
done

chosen="$(echo -e "$options" | rofi -dmenu -p 'Search Engine')"
case $chosen in
	'Duck Duck Go')
		$browser "duckduckgo.com/?q=$term"
        ;;
	'Google')
		$browser "google.com/search?newwindow=1&q=$term"
        ;;
	'Youtube')
		$browser "youtube.com/results?search_query=$term"
        ;;
	'URL')
		$browser "$term"
	;;
esac

