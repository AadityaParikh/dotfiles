#! /bin/sh

lsblk | tail --lines=+2 | grep part | grep -v sda | cut --complement -c -6 | fzf | cut -f 1 -d ' ' | xargs -I % sudo mount "/dev/%" "/mnt/usbdrive"
