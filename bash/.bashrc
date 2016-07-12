#!/bin/bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/bash/history
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND;}'history -a'
HISTCONTROL=erasedups
HISTFILESIZE=2000
HISTSIZE=1000

shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

[[ -x /usr/bin/dircolors ]] && eval " $(dircolors -b)"

for script in doc/pkgfile/command-not-found.bash autojump/autojump.bash ; do
	# shellcheck source=/dev/null
	[[ -r /usr/share/"$script" ]] && . /usr/share/"$script"
done

if [[ -r /usr/share/git/completion/git-prompt.sh ]] ; then
	. /usr/share/git/completion/git-prompt.sh
	PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} __git_ps1 '\[\e[1;32m\]\u\[\e[0m\]\[\e[1;30m\]@\[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[1;30m\]:\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]' '\[\e[1;30m\]\\\$\[\e[0m\] '"
fi

# shellcheck source=.bash_aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
