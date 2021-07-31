#! /bin/sh

lsblk -r | tail --lines=+2 | grep part | grep -v '/' | fzf | cut -f 1 -d ' ' | xargs -I % sudo mount "/dev/%" "/mnt/usbdrive"

lsblk -f
