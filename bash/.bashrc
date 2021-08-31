# shellcheck shell=bash
[[ $- =~ i ]] || return

shopt -s autocd globstar histappend nocaseglob

HISTCONTROL=erasedups:ignoreboth
HISTFILE=${XDG_STATE_HOME:-$HOME/.local/state}/bash/history
HISTSIZE=10000
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}'history -a'

if [[ -d ${XDG_CONFIG_HOME:-$HOME/.config}/bash/bashrc.d ]]; then
	for bashrc in "${XDG_CONFIG_HOME:-$HOME/.config}"/bash/bashrc.d/?*.bash; do
		# shellcheck source=/dev/null
		[[ -r $bashrc ]] && source "$bashrc"
	done
	unset bashrc
fi
