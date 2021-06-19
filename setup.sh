#!/bin/sh

rsync --exclude ".gitignore" --exclude ".git/" --exclude ".gitmodules" --exclude "LICENSE" --exclude "README.md" --exclude "setup.sh" -avh . ~
