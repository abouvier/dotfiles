#!/bin/sh
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d ] ; then
	for script in "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d/*.sh ; do
		# shellcheck source=/dev/null
		[ -x "$script" ] && . "$script"
	done
	unset script
fi

[ -d ~/.local/bin ] && PATH=~/.local/bin:$PATH

umask 027
