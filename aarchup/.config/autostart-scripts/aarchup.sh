#!/bin/sh
killall -9 --quiet aarchup
aarchup --loop-time=60 --aur --icon=/usr/share/aarchup/archlogo.svg &
