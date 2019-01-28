#!/bin/sh
session=${XDG_CONFIG_HOME:-$HOME/.config}/tdm/default

if ! readlink "$session" | grep -q Plasma ; then
	export QT_QPA_PLATFORMTHEME=qt5ct
fi

unset session
