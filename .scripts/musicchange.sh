#!/bin/sh


mpc add /
choice="$(printf "Play Toggle\nChange Song\nForward\nBackwards\nRestart\nShuffle" | rofi -dmenu -i -p "Music Controls")"


case $choice in
	"Change Song")
		mpc -f %title% listall | rofi -dmenu -i -p "song" | xargs -I % mpc searchplay title %
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
	"Shuffle")
		mpc crop && mpc add /
		;;
esac
