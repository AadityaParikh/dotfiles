#!/bin/sh
[ `pulsemixer --get-mute` == "1" ] && echo M
pulsemixer --get-volume | cut -d " " -f 1
