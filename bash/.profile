#!/bin/sh
profiledir=${XDG_CONFIG_HOME:-$HOME/.config}/profile.d

if [ -d "$profiledir" ] ; then
	for profile in "$profiledir"/?*.sh ; do
		# shellcheck source=/dev/null
		[ -x "$profile" ] && . "$profile"
	done
	unset profile
fi

unset profiledir

[ -d ~/.local/bin ] && PATH=~/.local/bin:$PATH

umask 027

if [ ! "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ] ; then
	exec startx "${XDG_CONFIG_HOME:-$HOME/.config}"/X11/xinit/xinitrc
fi
