(require 'cmake-mode)
(require 'desktop-entry-mode)
(require 'flycheck)
(require 'generic-x)
(require 'pkg-info)
(require 'xdg)

(defun xdg-state-home ()
	(xdg--dir-home "XDG_STATE_HOME" "~/.local/state"))

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

(autoload 'apache-mode "apache-mode" nil t)
(add-to-list 'auto-mode-alist '("/httpd\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("^/etc/httpd/conf/.*\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("\\.htaccess\\'" . apache-mode))

(autoload 'lua-mode "lua-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.lua\\'" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(autoload 'php-mode "php-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'interpreter-mode-alist '("php" . php-mode))

(setq-default pkgbuild-source-directory-locations ".:~/.cache/pacman/src")
(setq-default pkgbuild-update-sums-on-save nil)
(autoload 'pkgbuild-mode "pkgbuild-mode" nil t)
(add-to-list 'auto-mode-alist '("/PKGBUILD\\'" . pkgbuild-mode))

(setq-default display-fill-column-indicator-column 80)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq-default flycheck-emacs-lisp-load-path 'inherit)
(setq-default flycheck-phpcs-standard "PSR12")
(add-hook 'after-init-hook #'global-flycheck-mode)
(flycheck-add-mode 'sh-shellcheck 'pkgbuild-mode)

(load-theme 'dracula t)
