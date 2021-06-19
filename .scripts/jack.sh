#!/bin/sh

jackd --realtime --driver alsa --device hw:2,0 -n2 --period 1024 --rate 44100 &
a2j_control --ehw && a2j_control --start

pactl load-module module-jack-sink channels=2
pactl load-module module-jack-source channels=2
pacmd set-default-sink jack_out
pacmd set-default-source jack_in
