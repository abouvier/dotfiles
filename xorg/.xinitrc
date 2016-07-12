#!/bin/sh
nvidia-settings --load-config-only &
# shellcheck source=.xprofile
[ -r ~/.xprofile ] && . ~/.xprofile
. /etc/X11/xinit/xinitrc
