#!/bin/sh
export LESSHISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/less/history
export LESS='--RAW-CONTROL-CHARS --quiet'
export LESSCOLORIZER=pygmentize
