#!/bin/sh
export WINEPREFIX=${XDG_DATA_HOME:-$HOME/.local/share}/wine
export WINEARCH=win32
export WINEDLLOVERRIDES=winemenubuilder.exe=d
