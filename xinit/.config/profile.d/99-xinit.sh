#!/bin/sh
export XINITRC=${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinit/xinitrc
export XSERVERRC=${XDG_CONFIG_HOME:-$HOME/.config}/X11/xinit/xserverrc

if [ ! "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ] ; then
	session=$(whiptail --notags --menu 'Choix de session' 16 64 8 startkde Plasma i3 i3 openbox-session Openbox openbox-kde-session KDE/Openbox 3>&2 2>&1 1>&3)
	[ "$session" ] && exec xinit "$session"
	unset session
fi
