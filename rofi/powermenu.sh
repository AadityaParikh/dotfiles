#!/bin/bash

#Dependancies: i3 & jq

powerOff=""
reboot=""
lock=""
options="$powerOff\n$reboot\n$lock"

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

