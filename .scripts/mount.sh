#! /bin/sh

lsblk | tail --lines=+2 | grep part | grep -v sda | cut --complement -c -6 | rofi -dmenu -p "device" | cut -f 1 -d ' ' | xargs -I % st -e sudo mount "/dev/%" "/mnt/usbdrive"
