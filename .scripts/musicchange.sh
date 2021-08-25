#!/bin/sh

search="fzf -i --prompt"
choice="`printf "Insert Song\n\
Insert Album\n\
Insert Artist\n\
Clear\
" | $search "Music Controls"`"

ARTIST=""
case $choice in
	"Insert Song")
		mpc listall | $search "song" | xargs -I{} mpc insert {}
		;;
	"Insert Album")
	 	ARTIST=`mpc list artist | $search "Artist"` 
		[ "$ARTIST" != "" ] && mpc find album "`mpc -f %album% search artist "$ARTIST" | uniq | $search "Album"`" artist "$ARTIST" | mpc insert
	 	;;
	"Insert Artist")
		mpc search artist "`mpc list artist | $search "Artist"`" | mpc insert
		;;
	"Clear")
		mpc clear
		;;
esac
