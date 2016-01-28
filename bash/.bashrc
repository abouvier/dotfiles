# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}"/bash/history
HISTCONTROL=erasedups
HISTFILESIZE=2000
HISTSIZE=1000

shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

[[ -x /usr/bin/lesspipe.sh ]] && eval " $(lesspipe.sh)" && export LESS=-R
[[ -x /usr/bin/dircolors ]] && eval " $(dircolors -b)"

[[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] \
	&& . /usr/share/doc/pkgfile/command-not-found.bash

[[ -r /usr/share/bash-completion/bash_completion ]] \
	&& . /usr/share/bash-completion/bash_completion

[[ -r /usr/share/git/completion/git-prompt.sh ]] \
	&& . /usr/share/git/completion/git-prompt.sh

[[ -r /usr/share/autojump/autojump.bash ]] \
	&& . /usr/share/autojump/autojump.bash

PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ;} __git_ps1 '\[\e[1;32m\]\u\[\e[0m\]\[\e[1;30m\]@\[\e[0m\]\[\e[1;33m\]\h\[\e[0m\]\[\e[1;30m\]:\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]' '\[\e[1;30m\]\\\$\[\e[0m\] '"

[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
