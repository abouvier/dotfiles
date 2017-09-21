#!/bin/sh
export LESSHISTFILE=${XDG_CACHE_HOME:-$HOME/.cache}/less/history
export LESS=-R
export LESSCOLORIZER=pygmentize
