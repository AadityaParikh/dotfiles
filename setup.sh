#!/bin/sh

rsync --exclude ".gitignore" --exclude ".git/" --exclude ".gitmodules" --exclude "LICENSE" --exclude "README.md" --exclude "setup.sh" -avh . ~

# mpd.conf is put in /etc/ which is obviously outside of ~, which is why it's excluded

