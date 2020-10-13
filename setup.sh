#!/bin/sh

rsync --exclude ".gitignore" --exclude ".git/" --exclude ".gitmodules" --exclude "LICENSE" --exclude "README.md" --exclude "setup.sh" --exclude "mpd.conf" --exclude "mainTheme" -avh . ~
rsync mpd.conf /etc/mpd.conf
