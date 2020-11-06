# shellcheck shell=bash
alias uninstalled_packages='aur repo --repo-list | xargs -r unbuffer pacman -Sl | grep -v \\[install'
alias b='aur sync --chroot --rebuild'
alias bl='aur build --chroot --database "$USER"-local --force'

u() {
	aur sync --chroot --upgrades "$@" || return
	sudo pacman -Syu "$@" || return
	flatpak update
}

s() {
	pacman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aur pkglist -P | sort \
		| comm -23 - <(pacman -Slq "$AUR_REPO" | sort) \
		| xargs -r aur search -q -i -k Popularity
}
