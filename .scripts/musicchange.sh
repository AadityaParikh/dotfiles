#!/bin/sh


mpc add /
choice="$(printf "Play Toggle\n\
Change Song\n\
Insert Song\n\
Find Song\n\
Forward\n\
Backwards\n\
Restart\n\
Hard Shuffle\n\
Shuffle\n\
List\n\
Listen by Album\n\
Listen by Artist\
" | rofi -dmenu -i -p "Music Controls")"

ARTIST=""
case $choice in
	"Change Song")
		mpc -f %title% listall | rofi -dmenu -i -p "song" | xargs -I{} mpc find title {} | xargs -I{} mpc insert {} && mpc next
		;;
	"Find Song")
		mpc -f %title% listall | rofi -dmenu -i -p "song" | xargs -I{} mpc searchplay {}
		;;
	"Insert Song")
		mpc -f %title% listall | rofi -dmenu -i -p "song" | xargs -I{} mpc find title {} | xargs -I{} mpc insert {}
		;;
	"Play Toggle")
		mpc toggle
		;;
	"Forward")
		mpc next
		;;
	"Backwards")
		mpc prev
		;;
	"Restart")
		mpc prev && mpc next
		;;
	"Hard Shuffle")
		mpc clear && mpc add /
		;;
	"Shuffle")
		mpc shuffle
		;;
	"List")
		notify-send "`mpc playlist`"
		;;
	"Listen by Album")
		mpc clear
		ARTIST=`mpc list artist | rofi -dmenu -p "Artist"`
		mpc find album "`mpc -f %album% search artist $ARTIST | uniq | rofi -dmenu -p "Album"`" artist "$ARTIST" | mpc add
		;;
	"Listen by Artist")
		mpc clear
		mpc search artist "`mpc list artist | rofi -dmenu -p "Artist"`" | mpc add
		;;
esac
