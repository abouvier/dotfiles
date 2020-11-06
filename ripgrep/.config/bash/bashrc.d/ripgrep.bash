# shellcheck shell=bash
ft() {
	rg --follow --hidden --no-messages "$1" "${2:-.}"
}
