#!/bin/bash
alias installed_packages="pacman -Qeq | sort \
	| comm -23 - <(pacman -Qgq base-devel plasma | sort)"
alias si='pacman -Si'
alias q='pacman -Qi'
alias ql='pacman -Ql'
alias qo='pacman -Qo'
alias r='sudo pacman -Rcss'
alias last_installed="expac --timefmt=%s '%l\\t%n' \$(installed_packages) \
	| sort | cut -f2"
alias useless_packages='pacman -Qdtt'
