#!/bin/bash
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
shopt -s failglob

if [ -d "${XDG_CONFIG_HOME:-$HOME/.config}"/bash.d ] ; then
	for script in "${XDG_CONFIG_HOME:-$HOME/.config}"/bash.d/*.bash ; do
		# shellcheck source=/dev/null
		[ -x "$script" ] && . "$script"
	done
	unset script
fi
