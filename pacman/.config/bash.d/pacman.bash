#!/bin/bash
alias installed_packages="comm -23 \
	<(pacman -Qeq | sort) \
	<(pacman -Qgq base base-devel plasma | sort)"
alias si='pacman -Si'
alias q='pacman -Qi'
alias ql='pacman -Ql'
alias qo='pacman -Qo'
alias r='sudo pacman -Rcss'
alias last_installed='expac -t %s %l\\t%n $(installed_packages) | sort | cut -f2'
alias useless_packages='pacman -Qdtt'
