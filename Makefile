DIRS = $(sort $(wildcard */))
XDG_CONFIG_HOME ?= $(HOME)/.config
IGNORE ?= $(strip $(file < $(XDG_CONFIG_HOME)/dotfiles/ignore))
PKGS := $(filter-out $(IGNORE),$(DIRS:/=))

.PHONY: install
install:
	stow --verbose --target ~ $(PKGS)

.PHONY: uninstall
uninstall:
	stow --verbose --target ~ --delete $(PKGS)
