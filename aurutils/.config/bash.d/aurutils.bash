#!/bin/bash
alias ud='aur vercmp-devel | cut -d: -f1 | aur sync --no-ver-shallow -'
alias pacwoman='pacman --config=<(sed /aur/d /etc/pacman.conf)'
alias uninstalled_packages='unbuffer pacman -Sl aur | grep -v install'

u () {
	sudo pacman -Syu -- "$@"
	(($? == 130)) && return 130
	local packages=${XDG_CONFIG_HOME:-$HOME/.config}/aurutils/sync/ignore
	aur sync --upgrades --ignore="$(paste -sd, "$packages")" --rmdeps -- "$@"
}

s () {
	pacman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aur pkglist -P | sort \
		| comm -23 - <(pacman -Slq aur | sort) \
		| xargs -r aur search -q -i -k Popularity
}
