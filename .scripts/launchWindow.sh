#!/bin/sh
surf "google.com" & sleep 10 ; \
xdotool search --onlyvisible --name surf | \
xargs -I % xdotool windowsize % 1366 768 
