#!/bin/bash
alias unbuffer='unbuffer '
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
