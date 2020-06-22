# shellcheck shell=bash
mameverify () {
	find "${1:-$HOME/Jeux/Arcade}" -iname '*.zip' -print0 \
		| xargs -0 -L1 basename --suffix=.zip --zero \
		| xargs -0 mame -verifyroms
}
