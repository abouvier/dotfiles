#!/bin/bash
if [[ $TERM == *256color && $TERM != konsole* ]] ; then
	xrdb -query | sed -nE 's/.*color(1[6-9]|20|21):\s*([^$]+)/\1;\2/p' | paste -sd\; | xargs -r printf '\e]4;%s\e'\\
fi