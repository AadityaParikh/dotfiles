#!/bin/sh

rsync --exclude ".git/" --exclude ".gitmodules" --exclude "LICENSE" --exclude "README.md" --exclude "setup.sh" --exclude "mpd.conf" -avh . ~

# mpd.conf is put in /etc/ which is obviously outside of ~, which is why it's excluded

