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
	session=$(whiptail --notags --menu 'Choix de session' 16 64 8 startkde Plasma i3 i3 openbox-session Openbox openbox-kde-session KDE/Openbox 3>&2 2>&1 1>&3)
	[ "$session" ] && exec xinit "$session"
	unset session
fi
