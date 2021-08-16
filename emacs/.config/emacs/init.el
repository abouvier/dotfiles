(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(if (file-exists-p custom-file)
	(load custom-file))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'generic-x)

(setq auto-save-list-file-prefix nil)
(setq make-backup-files nil)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq-default c-basic-offset 4)
(setq-default c-default-style "linux")
(setq vc-follow-symlinks nil)
(setq column-number-mode t)
(global-linum-mode t)
(global-hl-line-mode t)
(setq visible-bell t)
(setq read-file-name-completion-ignore-case t)
(global-column-enforce-mode t)
(setq scroll-step 1)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(add-hook 'after-init-hook #'global-flycheck-mode)

(load-theme 'dracula t)

(setq linum-format (lambda (line)
	(let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
		(propertize (format (format "%%%dd \u2502 " w) line) 'face 'linum))))
