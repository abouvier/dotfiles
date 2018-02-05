#!/bin/bash
alias ud='aursync -u --no-ver --no-view --rmdeps -- $(pacman -Slq aur | egrep -- "-(bzr|git|hg|svn)$")'
alias pacwoman='pacman --config=<(sed /aur/d /etc/pacman.conf)'
alias aur-remove='repo-remove "$(pacconf --repo=aur Server | cut -d/ -f3-)"/aur.db.tar'

u () {
	sudo pacman -Syu "$@"
	(($? == 130)) && return 130
	aursync --upgrades --ignore="$(paste -sd, "${XDG_CONFIG_HOME:-$HOME/.config}"/aursync/ignore)" --rmdeps "$@"
}

s () {
	pacwoman -Ss -- "$@"
	printf '(?=.*%s)' "${@,,}" | xargs aurcat -P | xargs -r aursearch -i -k Popularity
}
