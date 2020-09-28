#!/bin/sh

choice="$(printf "Play Toggle\n\
Insert Song\n\
Find Song\n\
Forward\n\
Backwards\n\
Restart\n\
Hard Shuffle\n\
Shuffle\n\
Insert by Album\n\
Insert by Artist\n\
Clear\
" | rofi -dmenu -i -p "Music Controls")"

ARTIST=""
case $choice in
	"Find Song")
		mpc listall | rofi -dmenu -i -p "song" | xargs -I{} mpc searchplay {}
		;;
	"Insert Song")
		mpc listall | rofi -dmenu -i -p "song" | xargs -I{} mpc insert {}
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
		mpc clear && mpc add / && mpc shuffle
		;;
	"Shuffle")
		mpc shuffle
		;;
	"Insert by Album")
	 	ARTIST=`mpc list artist | rofi -dmenu -i -p "Artist"`
	 	mpc find album "`mpc -f %album% search artist "$ARTIST" | uniq | rofi -dmenu -i -p "Album"`" artist "$ARTIST" | mpc insert
	 	;;
	"Insert by Artist")
		mpc search artist "`mpc list artist | rofi -dmenu -i -p "Artist"`" | mpc insert
		;;
	"Clear")
		mpc clear
		;;
esac
