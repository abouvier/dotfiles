#!/bin/bash
alias grep='grep --color=auto'
alias egrep='grep -E'
alias fgrep='grep -F'
alias igrep='grep -i'

ft () {
	find -L "${2:-.}" -type d -name .git -prune -o -type f -exec 'egrep' -IHn --color=auto "$1" {} + 2>/dev/null
}
