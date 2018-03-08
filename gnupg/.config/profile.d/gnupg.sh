#!/bin/sh
export GNUPGHOME=${XDG_CONFIG_HOME:-$HOME/.config}/gnupg
# shellcheck disable=SC2155
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

gpg-connect-agent /bye
