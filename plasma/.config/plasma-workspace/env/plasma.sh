#!/bin/sh
dbus=${XDG_DATA_HOME:-$HOME/.local/share}/dbus-1/services
mkdir -p "$dbus"
ln -sf -T /usr/share/dbus-1/services/org.kde.plasma.Notifications.service \
	"$dbus"/org.freedesktop.Notifications.service
