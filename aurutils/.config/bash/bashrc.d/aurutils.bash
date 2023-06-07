# shellcheck shell=bash
b() {
	aur sandbox sync --rebuild --sign "$@"
}

bi() {
	aur sandbox sync \
		--database="$USER"-lan \
		--rebuild \
		--root=/var/db/pacman/"$USER"-lan \
		--sign \
		"$@"
}

bl() {
	aur sandbox build --database="$USER"-local --force "$@"
}

uninstalled_packages() {
	aur repo --list-repo \
		| LANG=C xargs -r pacman -Sl --color=always \
		| grep -v '\[installed\]'
}
