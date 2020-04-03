#!/bin/sh
if [ "$TERM" = "linux" ]; then
	/bin/echo -e "
	\e]P0101010
	\e]P17c7c7c
	\e]P28e8e8e
	\e]P3a0a0a0
	\e]P4686868
	\e]P5747474
	\e]P6868686
	\e]P7b9b9b9
	\e]P8525252
	\e]P97c7c7c
	\e]PA8e8e8e
	\e]PBa0a0a0
	\e]PC686868
	\e]PD747474
	\e]PE868686
	\e]PFf7f7f7
	"
        # get rid of artifacts
        clear
fi
