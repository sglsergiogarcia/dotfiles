;; Require Package
(require 'package)


;; MELPA
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)


;; Package Initialize: Load emacs packages and activate them; Beforre configurations of installed packages
(package-initialize)






;; Dracula Theme
;; https://draculatheme.com/emacs
;; Installed via; M-x package-install <RETURN> dracula-theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
