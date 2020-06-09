#!/bin/sh
ping -c 1 8.8.8.8 | sed -n -e 2p | cut -d ' ' -f 7-7 | sed "s/time=//" &

