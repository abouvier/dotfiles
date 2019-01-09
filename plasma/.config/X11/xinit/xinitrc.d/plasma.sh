#!/bin/sh
if [ "$1" = startkde ] ; then
	mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}"/dbus-1/services
	ln -sf -T /usr/share/dbus-1/services/org.kde.plasma.Notifications.service "${XDG_DATA_HOME:-$HOME/.local/share}"/dbus-1/services/org.freedesktop.Notifications.service
	export XDG_DATA_DIRS=${XDG_DATA_DIRS:-/usr/local/share:/usr/share}
fi
