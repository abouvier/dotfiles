# shellcheck shell=sh
if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d ]; then
	for profile in "${XDG_CONFIG_HOME:-$HOME/.config}"/profile.d/?*.sh; do
		# shellcheck source=/dev/null
		[ -r "$profile" ] && . "$profile"
	done
	unset profile
fi
