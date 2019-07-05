;; no cursor blinkage
(blink-cursor-mode 0)
;; no useless initial messages
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(defun display-startup-echo-area-message () (message ""))
;; no bars anywhere
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
