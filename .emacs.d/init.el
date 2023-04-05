(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(setq use-package-always-ensure t)
(setq use-package-always-defer nil)
(setq use-package-hook-name-suffix nil)

(setq load-prefer-newer t)

(use-package auto-compile
	     :config
	     (auto-compile-on-save-mode)
	     (auto-compile-on-load-mode))

(straight-use-package 'org)

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

;;; Font-Size
;(set-face-attribute 'default nil :height 140)

;;; Alt for MacOS Keyboard as Meta etc
;;; https://apple.stackexchange.com/questions/12087/emacs-on-mac-os-x-to-alt-or-command

;I am not sure if it encompasses all your needs but yes I understand the problem with Meta and have it from time to time when I fresh install Emacs. Here is what I can suggest simply:
;
;Just in your init.el or whatever is your emacs startup config file, set mac option modifier to 'meta and mac right option modifier to nil, in that order.
;
;That way:
;
;You will be able to use right option as a normal mac Alt key for special chars like #, $, {, [, ], } that requires Alt as usual
;You will be able to use the left option key as a normal Emacs Meta key.
;You won't need to mess with command (cmd) key.
;You won't even need ESC x combination which is still there for Meta
;Add the following in your .init.el file:
;
;(setq mac-option-modifier 'meta)
;(setq mac-right-option-modifier nil)
(setq mac-option-modifier 'meta)
(setq mac-right-option-modifier nil)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3f1dcd824a683e0ab194b3a1daac18a923eed4dba5269eecb050c718ab4d5a26" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
