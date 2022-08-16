DIRS = $(sort $(wildcard */))
XDG_CONFIG_HOME ?= $(HOME)/.config
IGNORE ?= $(strip $(file < $(XDG_CONFIG_HOME)/dotfiles/ignore))
PKGS := $(filter-out $(IGNORE),$(DIRS:/=))

install:
	stow --stow $(PKGS)

uninstall:
	stow --delete $(PKGS)

.PHONY: install uninstall
