# shellcheck shell=bash
vtoz64() {
	for file; do
		objcopy -I binary -O binary --reverse-bytes=2 "$file" "${file%.*}.z64"
	done
}
