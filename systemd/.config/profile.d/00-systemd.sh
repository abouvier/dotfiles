# shellcheck shell=sh
if [ -d /usr/lib/systemd/user-environment-generators ]; then
	option=$(set +o | grep allexport)
	set -o allexport
	for generator in /usr/lib/systemd/user-environment-generators/*; do
		[ -x "$generator" ] && eval "$("$generator")"
	done
	unset generator
	eval "$option"
	unset option
fi
