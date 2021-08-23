#!/bin/sh
compgen -c | fzf | xargs swaymsg exec --
