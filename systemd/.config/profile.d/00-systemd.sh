# shellcheck shell=sh
if [ -d /usr/lib/systemd/user-environment-generators ]; then
	allexport=$(set +o | grep allexport)
	set -o allexport
	eval "$(run-parts /usr/lib/systemd/user-environment-generators)"
	eval "$allexport"
	unset allexport
fi
