alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -a'
alias df='df -h'
alias e='emacs'
alias z='zile'

alias purge='sudo apt-get autoremove --purge'
alias installed_packages='comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n "s/^Package: //p" | sort -u)'

fh() {
	find -L /usr/include/ -type f -name "*.h" -exec grep --color=auto -Hn "$*" {} +
}

alias ldap42='ldapsearch -H ldaps://ldap.42.fr -b dc=42,dc=fr -D uid=abouvier,ou=august,ou=2013,ou=paris,ou=people,dc=42,dc=fr -y ~/.config/ldap/passwd'

mine() {
	for path in "$@"
	do
		find "$path" -exec chmod g-w,o-rwx {} +
	done
}

mine2() {
	for path in "$@"
	do
		sudo chown -R $USER:$USER "$path"
		find "$path" -type d -exec chmod 750 {} +
		find "$path" -type f -exec chmod 640 {} +
	done
}

sopcast() {
	sp-sc "$1" 3908 8908
	#vlc http://localhost:8908/tv.asf
}
