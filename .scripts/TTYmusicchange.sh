#!/bin/sh

mpc add /
mpc -f %title% listall | fzf | xargs -I % mpc searchplay title %
