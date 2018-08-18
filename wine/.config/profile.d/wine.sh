#!/bin/sh
export WINEPREFIX=${XDG_DATA_HOME:-$HOME/.local/share}/wine
export WINEDLLOVERRIDES=winemenubuilder.exe=d
