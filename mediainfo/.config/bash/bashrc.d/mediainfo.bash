# shellcheck shell=bash
mi () {
	mediainfo "$@" | sed -E --null-data \
		-e ':loop' \
		-e 's/\N*  : / : /g' \
		-e '/\N*\S : /!bloop'
}
