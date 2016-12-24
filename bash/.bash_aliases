#!/bin/bash
alias sudo='sudo '
alias ls='ls -hF --color=auto --hide=lost+found'
alias ll='ls -l'
alias la='ll -a'
alias l='ls'
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
	<(pacman -Qqg base base-devel | sort)"
alias se='sudoedit'
alias t='todo.sh'
alias hd='hexdump'

ft () {
	find -L "${2:-.}" -type f -exec 'egrep' -IHn --color=auto "$1" {} +
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

backup () {
	for dir in "$@" ; do
		rsync --verbose --archive --acls --xattrs --delete --delete-excluded \
			--ignore-errors --exclude-from="${dir%%+(/)}"/.rsync_exclude \
			"$(realpath "$dir")" /mnt/backup
	done
}
