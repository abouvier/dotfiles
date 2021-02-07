# shellcheck shell=bash
s() {
	run-parts "${@/#/--arg=}" -- "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/search.d
}

u() {
	run-parts --exit-on-error "${@/#/--arg=}" -- "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/update.d
}
