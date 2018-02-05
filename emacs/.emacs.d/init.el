(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
	(load custom-file))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'generic-x)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq vc-follow-symlinks nil)
(setq column-number-mode t)
(global-linum-mode t)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(add-hook 'after-init-hook #'global-flycheck-mode)

(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/.*\.php[345]?\'" . php-mode)) auto-mode-alist))

(autoload 'pkgbuild-mode "pkgbuild-mode.el" "PKGBUILD mode." t)
(setq auto-mode-alist (append '(("/PKGBUILD$" . pkgbuild-mode)) auto-mode-alist))
