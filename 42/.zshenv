#!/bin/sh
if [ -d ~/.brew ] ; then
	export C_INCLUDE_PATH=~/.brew/include
	export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH
	export LIBRARY_PATH=~/.brew/lib
	export DYLD_FALLBACK_LIBRARY_PATH=$LIBRARY_PATH
	PATH=~/.brew/bin:$PATH
	[ -d ~/.brew/lib/ccache/bin ] && PATH=~/.brew/lib/ccache/bin:$PATH
fi

[ -d ~/bin ] && PATH=~/bin:$PATH
