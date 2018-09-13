#!/bin/sh
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xsession.d ] ; then
	for session in "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xsession.d/*.sh ; do
		# shellcheck source=/dev/null
		[ -x "$session" ] && . "$session"
	done
	unset session
fi

if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xresources.d ] ; then
	for resource in "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/Xresources.d/*.Xresources ; do
		[ -r "$resource" ] && xrdb -merge -Dbackground_opacity=95 "$resource"
	done
	unset resource
fi
