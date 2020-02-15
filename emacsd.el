; --- basics ---
; default monospaced font
(set-default-font "Iosevka-14")
; no cursor blinkage
(blink-cursor-mode 0)
; no initial messages
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(defun display-startup-echo-area-message () (message ""))
; no bars
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
; backup in one place
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
; do not suspend on (probably accidental) C-z
(global-unset-key (kbd "C-z"))


; --- packages ---
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; packages to install
(setq pkgs nil)
(setq pkgs (append pkgs '(evil ranger smooth-scrolling))) ; sanity
(setq pkgs (append pkgs '(magit which-key sudo-edit)))    ; QOL
(setq pkgs (append pkgs '(base16-theme)))                 ; theme
(setq pkgs (append pkgs '(proof-general company-coq)))    ; coq
(setq pkgs (append pkgs '(racer rust-mode)))              ; rust
(setq pkgs (append pkgs '(intero)))                       ; haskell
(setq pkgs (append pkgs '(nix-mode)))                     ; nix
(setq package-selected-packages pkgs)

;; refresh and install packages on first run
(unless package-archive-contents (progn
                                   (package-refresh-contents)
                                   (package-install-selected-packages)))

;; color theme
  (load-theme 'base16-google-dark t)

;; smooth-scrolling
  (smooth-scrolling-mode 1)

;; ranger
  (global-set-key (kbd "C-x C-r") 'ranger)

;; evil
  ;order is important here
  (setq evil-want-abbrev-expand-on-insert-exit nil)
  (setq evil-want-C-u-scroll t)
  (require 'evil)
  (define-key evil-normal-state-map (kbd "M-.") nil)
  (evil-mode 1)

;; magit
  (global-set-key (kbd "C-x C-m") 'magit-status)

;; which-key
  (which-key-mode)

;; org-mode
  (setq org-startup-indented t)
  (setq org-ellipsis "ˇ")
  (setq org-log-done 'time)
  (setq org-cycle-separator-lines -1)
  (setq org-agenda-files '("~/org"))
  (setq org-blank-before-new-entry
        '((heading . nil) (plain-list-item . nil)))

  ; todo keywords
  (setq org-todo-keywords
	'((sequence "TODO" "CURR" "|" "DONE")
	  (sequence "|" "FAIL")))
  (setq org-todo-keyword-faces
        '(("CURR" . (:foreground "orange" :weight bold :background "gray16"))
          ("FAIL" . (:foreground "black" :background "gray20"))))
  (with-eval-after-load 'org
    (define-key org-mode-map (kbd "C-c C-<return>") 'org-todo))

  ; archival
  (setq org-archive-location "~/org/amygdala/org-archive.org::")
  (setq org-archive-save-context-info '(time file))

;; proof general + company-coq
  (setq proof-splash-enable nil)
  (add-hook 'coq-mode-hook 'company-coq-mode)
  (add-hook 'coq-mode-hook 'undo-tree-mode)
  (put 'company-coq-fold 'disabled nil)
  ;; TODO: these should ideally go in [company-coq-mode] and [company-coq-map]
  (with-eval-after-load 'coq-mode
    (progn
      (define-key coq-mode-map (kbd "C-c d") 'company-coq-diff-unification-error)))

;; rust + racer
  (add-hook 'rust-mode-hook 'racer-mode)
  (add-hook 'racer-mode-hook 'eldoc-mode)
  (add-hook 'racer-mode-hook 'company-mode)
  (setq company-tooltip-align-annotations t)
  (with-eval-after-load 'rust-mode
    (progn
      (define-key rust-mode-map (kbd "TAB") 'company-indent-or-complete-common)
      (define-key rust-mode-map (kbd "C-c C-d") 'racer-describe)))

;; haskell
  (add-hook 'haskell-mode-hook 'intero-mode)

; --- startup ---
(ranger)
