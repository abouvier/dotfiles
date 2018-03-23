#!/bin/sh
if ! pgrep -u "$USER" ssh-agent >/dev/null ; then
	ssh-agent > "$XDG_RUNTIME_DIR"/ssh-agent
fi

eval " $(cat "$XDG_RUNTIME_DIR"/ssh-agent)" >/dev/null
