#!/bin/sh


mpc add /
choice="$(printf "Play Toggle\nChange Song\nInsert Song\nFind Song\nForward\nBackwards\nRestart\nHard Shuffle\nShuffle" | rofi -dmenu -i -p "Music Controls")"


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
		mpc crop && mpc add /
		;;
	"Shuffle")
		mpc shuffle
		;;
esac
