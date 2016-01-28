IGNORE = 42

PKGS := $(filter-out $(IGNORE),$(shell ls -d */ | cut -d/ -f1))

install:
	stow --no-folding -Svt ~ $(PKGS)

uninstall:
	stow -Dvt ~ $(PKGS)
