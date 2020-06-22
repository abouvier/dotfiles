# shellcheck shell=bash
dvd () {
	mpv dvd:// --dvd-device="${1:-/dev/cdrom}"
}
