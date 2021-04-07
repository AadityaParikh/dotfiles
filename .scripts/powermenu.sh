#!/bin/bash

#Dependancies: i3

powerOff=""
reboot=""
lock=""
options="$lock\n$reboot\n$powerOff"

chosen="$(echo -e "$options" | rofi -dmenu -p "" -selected-row 2)"
case $chosen in
    $powerOff)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        i3lock --image ~/lock.png
        ;;
esac

