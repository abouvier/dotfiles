# shellcheck shell=bash
eval "$(dircolors <(dircolors --print-database | sed '1i TERM *direct*'))"

alias ls='ls -hF --color=auto --hide=lost+found'
alias ll='ls -l'
alias la='ll -a'
alias l='ll'
alias df='df -h'
alias du='du -h'

mine() {
	for path; do
		find "$path" -exec chmod g-w,o-w {} +
	done
}

mine2() {
	for path; do
		sudo chown -R "$USER:$USER" "$path"
		find "$path" -type d -exec chmod 755 {} +
		find "$path" -type f -exec chmod 644 {} +
	done
}

public() {
	for path; do
		find "$path" -type d -exec chmod a+rx {} +
		find "$path" -type f -exec chmod a+r {} +
	done
}
