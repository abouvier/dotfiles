# shellcheck shell=bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=erasedups
HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/bash/history
HISTFILESIZE=5000
HISTSIZE=2000
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}'history -a'

shopt -s autocd
shopt -s checkwinsize
shopt -s globstar
shopt -s histappend

if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/bash/bashrc.d ]; then
	for bashrc in "${XDG_CONFIG_HOME:-$HOME/.config}"/bash/bashrc.d/?*.bash; do
		# shellcheck source=/dev/null
		[ -r "$bashrc" ] && . "$bashrc"
	done
	unset bashrc
fi
