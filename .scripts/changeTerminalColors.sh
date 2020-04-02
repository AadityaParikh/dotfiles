#!/bin/sh
if [ "$TERM" = "linux" ]; then
	printf '\033]P01a1813'; # black
	printf '\033]P1991f1f'; # red
	printf '\033]P25c991f'; # green
	printf '\033]P3997b1f'; # yellow
	printf '\033]P41f3e99'; # blue
	printf '\033]P5991f70'; # magenta
	printf '\033]P61f9999'; # cyan
	printf '\033]P7ccbc95'; # white
	printf '\033]P8333026'; # brighter black
	printf '\033]P9E62E2E'; # brighter red
	printf '\033]PA8AE62E'; # brighter green
	printf '\033]PBE6B82E'; # brighter yellow
	printf '\033]PC2E5CE6'; # brighter blue
	printf '\033]PDE62EA9'; # brighter magenta
	printf '\033]PE2EE6E6'; # brighter cyan
	printf '\033]PFE6D7AB'; # brighter white
clear;
fi;
