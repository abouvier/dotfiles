# shellcheck shell=bash
if [[ -r ~/.profile ]]; then
	# shellcheck source=.profile
	source ~/.profile
fi

if [[ -r ~/.bashrc ]]; then
	# shellcheck source=.bashrc
	source ~/.bashrc
fi
