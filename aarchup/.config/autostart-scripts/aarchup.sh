#!/bin/sh
killall --quiet -9 aarchup
aarchup --loop-time 60 --aur --icon /usr/share/aarchup/archlogo.svg &
