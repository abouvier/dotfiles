(require 'cmake-mode)
(require 'desktop-entry-mode)
(require 'flycheck)
(require 'generic-x)
(require 'package)
(require 'xdg)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file (expand-file-name "emacs/custom.el" (xdg-state-home)))
(if (file-exists-p custom-file)
	(load custom-file))

(setq auto-save-list-file-prefix nil)
(setq make-backup-files nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq vc-follow-symlinks nil)
(setq column-number-mode t)
(global-display-line-numbers-mode)
(global-hl-line-mode)
(setq visible-bell t)
(setq read-file-name-completion-ignore-case t)
(setq scroll-step 1)

(add-to-list 'term-file-aliases '("alacritty" . "xterm"))

(setq-default pkgbuild-source-directory-locations ".:~/.cache/pacman/src")
(setq-default pkgbuild-update-sums-on-save nil)

(setq-default display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq-default flycheck-phpcs-standard "Symfony")
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-mode 'sh-shellcheck 'pkgbuild-mode)

(load-theme 'dracula t)
