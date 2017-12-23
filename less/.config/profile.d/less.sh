#!/bin/sh
export LESSHISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/less/history
export LESS=-R
export LESSCOLORIZER=pygmentize
