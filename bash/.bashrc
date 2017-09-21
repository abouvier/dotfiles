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

[[ -x /usr/bin/dircolors ]] && eval " $(dircolors -b)"

for script in doc/pkgfile/command-not-found.bash autojump/autojump.bash ; do
	# shellcheck source=/dev/null
	[[ -r /usr/share/"$script" ]] && . /usr/share/"$script"
done
unset script

if [[ -r /usr/share/git/completion/git-prompt.sh ]] ; then
	color () {
		local IFS=\;
		echo "\[\e[${*:2}m\]$1\[\e[0m\]"
	}
	. /usr/share/git/completion/git-prompt.sh
	PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}"__git_ps1 '$(color \\u 32)@$(color \\h 33):$(color \\w 34)' ' $(color λ 34) '"
	unset -f color
fi

# shellcheck source=.bash_aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
