# shellcheck shell=sh
session=${XDG_CONFIG_HOME:-$HOME/.config}/tdm/default

if ! readlink "$session" | grep -q Plasma; then
	dbus=${XDG_DATA_HOME:-$HOME/.local/share}/dbus-1/services
	mkdir -p "$dbus"
	ln -sf -T /usr/share/dbus-1/services/org.knopwob.dunst.service \
		"$dbus"/org.freedesktop.Notifications.service
	unset dbus
fi

unset session
