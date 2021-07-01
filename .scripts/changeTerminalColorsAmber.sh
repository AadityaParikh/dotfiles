#!/bin/sh
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0000000
  \e]P17d1f00
  \e]P28f2400
  \e]P3a12800
  \e]P4691a00
  \e]P5731d00
  \e]P6872200
  \e]P7ba2f00
  \e]P8521400
  \e]P97d1f00
  \e]PA8f2400
  \e]PBa12800
  \e]PC691a00
  \e]PD731d00
  \e]PE872200
  \e]PFf73e00
  "
  # get rid of artifacts
  clear
fi
