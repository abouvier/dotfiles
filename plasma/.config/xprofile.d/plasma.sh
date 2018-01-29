#!/bin/sh
if [ "$XDG_CURRENT_DESKTOP" = KDE ] ; then
	mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}"/dbus-1/services
	ln -sf -T /usr/share/dbus-1/services/org.kde.plasma.Notifications.service "${XDG_DATA_HOME:-$HOME/.local/share}"/dbus-1/services/org.freedesktop.Notifications.service
fi
