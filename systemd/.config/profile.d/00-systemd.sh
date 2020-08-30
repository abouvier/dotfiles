# shellcheck shell=sh
if [ -d /usr/lib/systemd/user-environment-generators ]; then
	for generator in /usr/lib/systemd/user-environment-generators/*; do
		[ -x "$generator" ] && export "$("$generator")"
	done
	unset generator
fi
