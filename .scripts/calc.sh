#!/bin/sh

while [ $? -le 1 ]
do
	rofi -dmenu | bc
	[ $? -gt 0 ] && exit
done
