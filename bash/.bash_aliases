alias ls='ls -hF --color=auto'
alias ll='ls -l'
alias la='ll -a'
alias df='df -h'
alias e='emacs'
alias z='zile'

alias installed_packages='comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n "s/^Package: //p" | sort -u)'

fh() {
	find -L /usr/include/ -type f -name "*.h" -exec grep --color=auto -Hn "$*" {} +
}

alias ldap42='ldapsearch -H ldaps://ldap.42.fr -b dc=42,dc=fr -D uid=abouvier,ou=august,ou=2013,ou=paris,ou=people,dc=42,dc=fr -y ~/.ldap/passwd'
