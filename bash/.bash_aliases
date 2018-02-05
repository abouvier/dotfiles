#!/bin/bash
alias sudo='sudo '
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias igrep='grep -i'
alias unbuffer='unbuffer '
alias se='sudoedit'
alias hd='hexdump'
alias free='LANG=C free -h'
alias ta='tree -a'
alias backup="rdiff-backup --exclude-if-present=.nobackup \
	--exclude=**/rdiff-backup-data \
	--exclude=**/lost+found \
	--exclude=**/.Trash*"
alias y='youtube-dl'
alias colordiff='\diff --color=auto'
alias diff='colordiff'
alias cmatrix='cmatrix -b'

ft () {
	find -L "${2:-.}" -type d -name .git -prune -o -type f -exec 'egrep' -IHn --color=auto "$1" {} + 2>/dev/null
}
