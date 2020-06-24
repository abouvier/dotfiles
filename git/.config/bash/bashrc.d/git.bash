# shellcheck shell=bash
if [[ -r /usr/share/git/git-prompt.sh ]]; then
	. /usr/share/git/git-prompt.sh
	if hash __git_ps1 2>/dev/null; then
		color () {
			local IFS=\;
			echo "\\[\\e[${*:2}m\\]$1\\[\\e[0m\\]"
		}
		PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}"__git_ps1 '$(color \\u 32)@$(color \\h 33):$(color \\w 34)' ' $(color λ 34) '"
		unset -f color
	fi
fi
