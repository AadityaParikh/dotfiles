#!/bin/sh

rsync --exclude ".git/" --exclude ".gitmodules" --exclude "LICENSE" --exclude "README.md" --exclude "setup.sh" -avh . ~

