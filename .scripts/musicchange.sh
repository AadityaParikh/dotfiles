#!/bin/bash
#I'm sorry

mpc add /
choice="$(printf "Change Song\nPlay Toggle\nForward\nBackwards\nRestart" | rofi -dmenu -p "Music Controls")"


case $choice in
	"Change Song")
		mpc -f %title% listall | rofi -dmenu -p "song" | xargs -I % mpc searchplay title %
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
esac
