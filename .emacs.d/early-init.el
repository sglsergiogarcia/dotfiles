(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

(defvar startup/file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)

(defun startup/revert-file-name-handler-alist ()
  (setq file-name-handler-alist startup/file-name-handler-alist))

(defun startup/reset-gc ()
  (setq gc-cons-threshold 16777216
	gc-cons-percentage 0.1))

(add-hook 'emacs-startup-hook 'startup/revert-file-name-handler-alist)
(add-hook 'emacs-startup-hook 'startup/reset-gc)

(setq package-enable-at-startup nil
      package--init-file-ensured t)

(push '(menu-bar-lines . 1) default-frame-alist)
(push '(tool-bar-lines . 1) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(set-window-scroll-bars (minibuffer-window) nil nil)
(setq frame-inhibit-implied-resize t)
