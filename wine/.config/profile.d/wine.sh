#!/bin/sh
export WINEPREFIX=${XDG_CACHE_HOME:-$HOME/.cache}/wine
export WINEDLLOVERRIDES=winemenubuilder.exe=d
