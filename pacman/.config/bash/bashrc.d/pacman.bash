#!/bin/bash
alias exclude_groups='sort | comm -23 - <(pacman -Qgq base-devel plasma | sort)'
alias installed_packages='pacman -Qe'
alias si='pacman -Si'
alias q='pacman -Qi'
alias ql='pacman -Ql'
alias qo='pacman -Qo'
alias r='sudo pacman -Rcss'
alias last_installed="installed_packages | expac --timefmt=%s '%l\\t%n' - \
	| sort | cut -f2 | xargs -r pacman -Q"
alias useless_packages='pacman -Qdttq | exclude_groups | xargs -r pacman -Q'
alias msi='test -e PKGBUILD && makepkg --printsrcinfo > .SRCINFO'
alias modified_configs='pacman -Qii | grep ^MODIFIED | cut -f2 | sort'
alias foreign_packages='pacman -Qm'
