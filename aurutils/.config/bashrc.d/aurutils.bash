#!/bin/bash
alias aur_repo='pacman-conf --repo-list | grep -- -aur$'
alias uninstalled_packages='unbuffer pacman -Sl $(pacman-conf --repo-list | egrep "aur|local") | grep -v install'
alias b='aur sync --chroot --database="$(aur_repo)" --rebuild'

u () {
	local packages=${XDG_CONFIG_HOME:-$HOME/.config}/aurutils/sync/ignore
	aur sync --chroot --database="$(aur_repo)" --ignore-file="$packages" --upgrades "$@" || return
	sudo pacman -Syu "$@" || return
	flatpak update
}

s () {
	pacman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aur pkglist -P | sort \
		| comm -23 - <(pacman -Slq "$(aur_repo)" | sort) \
		| xargs -r aur search -q -i -k Popularity
}
