#!/bin/sh
export CCACHE_CONFIGPATH=${XDG_CONFIG_HOME:-$HOME/.config}/ccache/ccache.conf
[ -d /usr/lib/ccache/bin ] && export PATH=/usr/lib/ccache/bin${PATH:+:$PATH}