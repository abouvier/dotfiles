#!/bin/bash
alias backup="rdiff-backup --exclude-if-present=.nobackup \
	--exclude=**/rdiff-backup-data \
	--exclude=**/lost+found \
	--exclude=**/.Trash*"
