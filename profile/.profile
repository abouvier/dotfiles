umask 027

export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache

export GIMP2_DIRECTORY="$XDG_CONFIG_HOME"/gimp
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export WINEPREFIX="$XDG_DATA_HOME"/wine
export RLWRAP_HOME="$XDG_DATA_HOME"/rlwrap

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/emacs
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig
export STEAM_FRAME_FORCE_CLOSE=1
export WINEARCH=win32

[ -x /usr/bin/lesspipe.sh ] && eval `lesspipe.sh` && export LESS=-R
[ -x /usr/bin/dircolors ] && eval `dircolors -b`

[ -d /usr/lib/ccache/bin ] && PATH="/usr/lib/ccache/bin:$PATH"
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
