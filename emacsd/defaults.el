;; no cursor blinkage
(blink-cursor-mode 0)

;; no initial messages
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(defun display-startup-echo-area-message () (message ""))

;; no bars
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)

;; backup in one place
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;; do not suspend on (probably accidental) C-z
(global-unset-key (kbd "C-z"))

;; default monospaced font
(set-default-font "Fira Code-11")
