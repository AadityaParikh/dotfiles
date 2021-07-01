#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0000000
  \e]P1bf616a
  \e]P2a3be8c
  \e]P3ebcb8b
  \e]P48fa1b3
  \e]P5b48ead
  \e]P696b5b4
  \e]P7ffffff
  \e]P8aaaaaa
  \e]P9bf616a
  \e]PAa3be8c
  \e]PBebcb8b
  \e]PC8fa1b3
  \e]PDb48ead
  \e]PE96b5b4
  \e]PFeff1f5
  "
  # get rid of artifacts
  clear
fi
