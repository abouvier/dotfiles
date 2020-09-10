# shellcheck shell=bash
mameverify() {
	find "${1:-$HOME/Jeux/Arcade}" -name '*.zip' -type f -print0 \
		| xargs -0 basename --suffix=.zip --zero \
		| xargs -0 mame -verifyroms
}
