#!/bin/sh
if ! pgrep -u "$USER" unclutter >/dev/null ; then
	unclutter --fork
fi
