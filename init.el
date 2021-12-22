(setq custom-file "~/.emacs.d/.gnu-emacs-custom")
(load "~/.emacs.d/.gnu-emacs-custom" t t)
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(unless (package-installed-p 'dracula-theme)
  (package-refresh-contents)
  (package-install 'dracula-theme))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
