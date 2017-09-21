#!/bin/sh
export GNUPGHOME=${XDG_CONFIG_HOME:-$HOME/.config}/gnupg
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gnupg/S.gpg-agent.ssh
