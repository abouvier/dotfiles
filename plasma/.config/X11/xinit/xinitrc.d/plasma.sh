#!/bin/sh
session=${XDG_CONFIG_HOME:-$HOME/.config}/tdm/default

if readlink "$session" | grep -q plasma ; then
	export XDG_DATA_DIRS=${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
	dbus=${XDG_DATA_HOME:-$HOME/.local/share}/dbus-1/services
	mkdir -p "$dbus"
	ln -sf -T /usr/share/dbus-1/services/org.kde.plasma.Notifications.service \
		"$dbus"/org.freedesktop.Notifications.service
	unset dbus
fi

unset session
