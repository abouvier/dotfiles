IGNORE = vlc gtk yakuake aarchup

PKGS := $(filter-out $(IGNORE),$(shell ls -d */ | cut -d/ -f1))

install: $(PKGS)

$(PKGS):
	stow --verbose --target ~ $@

uninstall:
	stow --verbose --target ~ --delete $(PKGS)

.PHONY: $(PKGS) uninstall
