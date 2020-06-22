# shellcheck shell=bash
alias aur_repo='pacman-conf --repo-list | grep -- -aur$'
alias local_repo='pacman-conf --repo-list | grep -- -local$'
alias uninstalled_packages='unbuffer pacman -Sl $(pacman-conf --repo-list | egrep "aur|local") | grep -v install'
alias b='aur sync --chroot --database="$(aur_repo)" --rebuild'
alias bl='aur build --chroot --database="$(local_repo)" --pacman-conf=$HOME/.local/share/devtools/pacman-aur.conf'

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
