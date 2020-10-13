#!/bin/sh

choice="$(printf "Play Toggle\n\
Find Song\n\
Insert Song\n\
Insert Album\n\
Insert Artist\n\
Forward\n\
Backwards\n\
Restart\n\
Hard Shuffle\n\
Hard Shuffle Album\n\
Shuffle\n\
Clear\
" | rofi -dmenu -i -p "Music Controls")"

ARTIST=""
ALBUMS=""
case $choice in
	"Find Song")
		mpc listall | rofi -dmenu -i -p "song" | xargs -I{} mpc searchplay {}
		;;
	"Insert Song")
		mpc listall | rofi -dmenu -i -p "song" | xargs -I{} mpc insert {}
		;;
	"Insert Album")
	 	ARTIST=`mpc list artist | rofi -dmenu -i -p "Artist"` && mpc find album "`mpc -f %album% search artist "$ARTIST" | uniq | rofi -dmenu -i -p "Album"`" artist "$ARTIST" | mpc insert
	 	;;
	"Insert Artist")
		mpc search artist "`mpc list artist | rofi -dmenu -i -p "Artist"`" | mpc insert
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
		mpc clear && mpc listall | shuf | mpc insert
		;;
	"Hard Shuffle Album")
		mpc clear 
		ALBUMS=`mpc list album | shuf` # no MPC, it's my asshole that's missing the quotation mark
		mpc insert "`mpc search album $ALBUM)`"
		;;
	"Shuffle")
		mpc shuffle
		;;
	"Clear")
		mpc clear
		;;
esac
