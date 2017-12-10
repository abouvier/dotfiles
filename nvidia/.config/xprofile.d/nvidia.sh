#!/bin/sh
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=nvidia

nvidia-settings --load-config-only
