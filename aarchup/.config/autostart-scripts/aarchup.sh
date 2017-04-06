#!/bin/sh
killall -9 --quiet aarchup
aarchup --loop-time=120 --aur --icon=/usr/share/aarchup/archlogo.svg &
