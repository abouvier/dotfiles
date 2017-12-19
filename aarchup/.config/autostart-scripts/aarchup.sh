#!/bin/sh
killall -9 --quiet aarchup
aarchup --loop-time=180 --aur --icon=/usr/share/aarchup/archlogo.svg --timeout=5 &
