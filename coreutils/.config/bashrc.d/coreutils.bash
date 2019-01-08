#!/bin/bash
hash dircolors 2>/dev/null && eval " $(dircolors -b)"

alias ls='ls -hF --color=auto --hide=lost+found'
alias ll='ls -l'
alias la='ll -a'
alias l='ll'
alias df='df -h'
alias du='du -h'

mine () {
	for path in "$@" ; do
		find "$path" -exec chmod g-w,o-rwx {} +
	done
}

mine2 () {
	for path in "$@" ; do
		sudo chown -R "$USER:$USER" "$path"
		find "$path" -type d -exec chmod 750 {} +
		find "$path" -type f -exec chmod 640 {} +
	done
}

public () {
	for path in "$@" ; do
		find "$path" -type d -exec chmod a+rx {} +
		find "$path" -type f -exec chmod a+r  {} +
	done
}
