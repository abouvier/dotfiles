# shellcheck shell=bash
if [[ -r /usr/share/bash-complete-alias/complete_alias ]]; then
	# shellcheck disable=SC1094
	source /usr/share/bash-complete-alias/complete_alias
	complete -F _complete_alias t
fi
