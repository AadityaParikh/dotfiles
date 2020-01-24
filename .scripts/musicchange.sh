#!/bin/sh

mpc add /
mpc -f %title% listall | rofi -dmenu -p "song" | xargs -I % mpc searchplay title %
mpc | xargs -I % notify-send '%'
