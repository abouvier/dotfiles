# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache

export GIMP2_DIRECTORY="$XDG_CONFIG_HOME"/gimp
export HISTFILE="$XDG_DATA_HOME"/bash/history
export ICEAUTHORITY="$XDG_RUNTIME_DIR"/X11/iceauthorty
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME"/nv
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export WINEPREFIX="$XDG_DATA_HOME"/wine
export XAUTHORITY="$XDG_RUNTIME_DIR"/X11/xauthority
export RLWRAP_HOME="$XDG_DATA_HOME"/rlwrap

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 027

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
