#!/bin/bash
alias pacwoman='pacman --config=<(sed /aur/d /etc/pacman.conf)'
alias uninstalled_packages='unbuffer pacman -Sl aur | grep -v install'

u () {
	local packages=${XDG_CONFIG_HOME:-$HOME/.config}/aurutils/sync/ignore
	aur sync --upgrades --chroot --ignore-file="$packages" "$@" || return
	sudo pacman -Syu "$@"
}

s () {
	pacman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aur pkglist -P | sort \
		| comm -23 - <(pacman -Slq aur | sort) \
		| xargs -r aur search -q -i -k Popularity
}
