# shellcheck shell=sh
if [ -d /usr/lib/systemd/user-environment-generators ]; then
	flags=$(set +o)
	set -o allexport
	for generator in /usr/lib/systemd/user-environment-generators/*; do
		[ -x "$generator" ] && eval "$("$generator")"
	done
	unset generator
	eval "$flags"
fi
