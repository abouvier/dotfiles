# shellcheck shell=bash
alias uninstalled_packages='aur repo --repo-list | xargs -r unbuffer pacman -Sl | grep -v \\[install'
alias b='aur sync --chroot --rebuild --sign'
alias bl='aur build --chroot --database "$USER"-local --force --sign'
