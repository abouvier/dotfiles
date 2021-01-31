# shellcheck shell=bash
s() {
	local search
	if [[ -d ${XDG_DATA_HOME:-$HOME/.local/lib}/base/search ]]; then
		for search in "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/search/*; do
			[[ -x $search ]] && "$search" "$@"
		done
	fi
}

u() {
	local update
	if [[ -d ${XDG_DATA_HOME:-$HOME/.local/lib}/base/update ]]; then
		for update in "${XDG_DATA_HOME:-$HOME/.local/lib}"/base/update/*; do
			if [[ -x $update ]]; then
				"$update" "$@" || break
			fi
		done
	fi
}
