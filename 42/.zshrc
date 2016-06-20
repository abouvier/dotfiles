#!/bin/sh
autoload -Uz compinit promptinit
compinit
promptinit
prompt adam1

setopt HIST_IGNORE_DUPS
setopt autocd

alias ls='ls -FGh'
alias ll='ls -l'
alias la='ll -a'
alias l='ls'
alias du='du -h'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias e='emacs'
alias php='php -d error_reporting=E_ALL'

for compiler in gcc g++ clang clang++ clang-omp ; do
	# shellcheck disable=SC2139
	alias $compiler="$compiler -Wall -Wextra -Werror -ansi -pedantic-errors"
done

ft () {
	find -L "${2:-.}" -type f -exec 'grep' -IHn --color=auto "$1" {} +
}

norme () {
	find -L "${@:-.}" -iregex '.*\.[ch]$' -exec norminette {} +
}
