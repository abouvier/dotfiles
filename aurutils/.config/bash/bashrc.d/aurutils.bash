# shellcheck shell=bash
alias uninstalled_packages='aur repo --repo-list | cut -f1 | xargs -r unbuffer pacman -Sl | grep -v \\[install'
alias b='aur sync --chroot --rebuild'
alias bl='aur build --chroot --database=$USER-local --pacman-conf=${XDG_DATA_HOME:-$HOME/.local/share}/devtools/pacman-aur.conf'

u() {
	local packages=${XDG_CONFIG_HOME:-$HOME/.config}/aurutils/sync/ignore
	aur sync --chroot --ignore-file="$packages" --upgrades "$@" || return
	sudo pacman -Syu "$@" || return
	flatpak update
}

s() {
	pacman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aur pkglist -P | sort \
		| comm -23 - <(pacman -Slq "$AUR_REPO" | sort) \
		| xargs -r aur search -q -i -k Popularity
}
