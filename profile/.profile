umask 027

export GIMP2_DIRECTORY="${XDG_CONFIG_HOME:-$HOME/.config}"/gimp
export LESSHISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}"/less/history
export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}"/wine
export RLWRAP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"/rlwrap
export COMPOSER_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"/composer
export COMPOSER_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}"/composer
export ATOM_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"/atom

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/emacs
export STEAM_FRAME_FORCE_CLOSE=1
export WINEARCH=win32
export WINEDLLOVERRIDES=winemenubuilder.exe=d
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose
export GIT_PS1_SHOWCOLORHINTS=1
export CCACHE_DIR=/tmp/ccache

[ -d /usr/lib/ccache/bin ] && PATH="/usr/lib/ccache/bin:$PATH"
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"
