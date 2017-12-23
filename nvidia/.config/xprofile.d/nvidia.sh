#!/bin/sh
export __GL_SHADER_DISK_CACHE_PATH=${XDG_CACHE_HOME:-$HOME/.cache}/nvidia
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=nvidia

nvidia-settings --load-config-only
