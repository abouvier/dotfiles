# shellcheck shell=bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/bash/history
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}'history -a'
HISTCONTROL=erasedups
HISTFILESIZE=5000
HISTSIZE=2000

shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
shopt -s nocaseglob

bashrcdir=${XDG_CONFIG_HOME:-$HOME/.config}/bash/bashrc.d

if [ -d "$bashrcdir" ]; then
	for bashrc in "$bashrcdir"/?*.bash; do
		# shellcheck source=/dev/null
		[ -r "$bashrc" ] && . "$bashrc"
	done
	unset bashrc
fi

unset bashrcdir
