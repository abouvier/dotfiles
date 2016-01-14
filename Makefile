IGNORE = 42 zsh

PKGS := $(filter-out $(IGNORE),$(shell find -maxdepth 1 -type d \! -name '.*' -exec basename '{}' \;))

install:
	stow -Svt ~ $(PKGS)

uninstall:
	stow -Dvt ~ $(PKGS)
