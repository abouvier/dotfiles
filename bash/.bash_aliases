#!/bin/bash
alias sudo='sudo '
alias ls='ls -hF --color=auto --hide=lost+found'
alias ll='ls -l'
alias la='ll -a'
alias l='ll'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias df='df -h'
alias du='du -h'
alias e='emacs'
alias unbuffer='unbuffer '
alias colors="msgcat --color=test \
	| sed -n '3,10{y/|/\n/;p}' \
	| sed '2~11!d' \
	| paste -sd ''"
alias installed_packages="comm -23 \
	<(pacman -Qqe | sort) \
	<(pacman -Qqg base base-devel plasma | sort)"
alias se='sudoedit'
alias t='todo.sh'
alias hd='hexdump'
alias free='LANG=C free -h'
alias ta='tree -a'
alias u='pacaur -Syu'
alias backup="rdiff-backup --exclude-if-present=.nobackup \
	--exclude=**/lost+found \
	--exclude=**/.Trash*"
alias s='pacaur -Ss'
alias si='pacaur -Si'
alias q='pacaur -Qi'
alias ql='pacaur -Ql'
alias qo='pacaur -Qo'
alias r='pacaur -Rcss'
alias last_installed='expac -t %s %l\\t%n $(installed_packages) | sort | cut -f2'
alias y='youtube-dl'
alias useless_packages='pacaur -Qdtt'

ft () {
	find -L "${2:-.}" -type f -exec 'egrep' -IHn --color=auto "$1" {} + 2>/dev/null
}

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
