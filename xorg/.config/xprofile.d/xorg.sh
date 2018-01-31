#!/bin/sh
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xresources.d ] ; then
	for resource in "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xresources.d/*.Xresources ; do
		[ -r "$resource" ] && xrdb -merge "$resource"
	done
	unset resource
fi
