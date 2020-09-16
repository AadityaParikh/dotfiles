#!/bin/sh
notify-send "Starting color picker, right click to exit"
colorpicker | cut -d ' ' -f 2 | xclip -se c
