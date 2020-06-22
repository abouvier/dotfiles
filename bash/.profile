# shellcheck shell=sh
profiledir=${XDG_CONFIG_HOME:-$HOME/.config}/profile.d

if [ -d "$profiledir" ] ; then
	for profile in "$profiledir"/?*.sh ; do
		# shellcheck source=/dev/null
		[ -r "$profile" ] && . "$profile"
	done
	unset profile
fi

unset profiledir
