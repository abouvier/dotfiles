# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u@\h:\w\$ '

HISTFILE="$XDG_DATA_HOME"/bash/history
HISTCONTROL=erasedups
HISTFILESIZE=2000
HISTSIZE=1000

shopt -s autocd
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar


[[ -r /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
[[ -r /usr/share/doc/pkgfile/command-not-found.bash ]] && . /usr/share/doc/pkgfile/command-not-found.bash

[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases
