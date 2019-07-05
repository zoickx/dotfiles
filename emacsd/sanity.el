;; backup in one place
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;; do not suspend on (probably accidental) C-z
(global-unset-key (kbd "C-z"))

;; default monospace font
(set-default-font "Fira Code-11")
