# shellcheck shell=bash
s() {
	run-parts "${@/#/--arg=}" -- "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/search
}

u() {
	run-parts --exit-on-error "${@/#/--arg=}" -- "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/update
}
