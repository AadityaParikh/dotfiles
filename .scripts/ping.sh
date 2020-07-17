#!/bin/sh
ping -c 1 duckduckgo.com | sed -n -e 2p | cut -d ' ' -f 7-7 | sed "s/time=//"

