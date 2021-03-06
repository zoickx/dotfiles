; --- basics ---
; default monospaced font
(set-frame-font "Iosevka-14")
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
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
; do not suspend on (probably accidental) C-z
(global-unset-key (kbd "C-z"))
; show current column
(column-number-mode 1)


; --- packages ---
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; packages to install
(setq pkgs nil)
(setq pkgs (append pkgs '(evil undo-tree ranger smooth-scrolling))) ; sanity
(setq pkgs (append pkgs '(magit which-key sudo-edit)))              ; QOL
(setq pkgs (append pkgs '(base16-theme)))                           ; theme
(setq pkgs (append pkgs '(markdown-mode)))                          ; markup
(setq pkgs (append pkgs '(elpy)))                                   ; python
(setq pkgs (append pkgs '(dante flycheck-haskell)))                 ; haskell
(setq pkgs (append pkgs '(proof-general company-coq)))              ; coq
(setq pkgs (append pkgs '(activity-watch-mode)))                    ; activitywatch
(setq package-selected-packages pkgs)

;; refresh and install packages on first run
(unless package-archive-contents (progn
                                   (package-refresh-contents)
                                   (package-install-selected-packages)))

;; color theme
  (load-theme 'base16-google-dark t)

;; undo for the sane
  (global-undo-tree-mode)

;; smooth-scrolling
  (smooth-scrolling-mode 1)

;; AcitivtyWatch
  (global-activity-watch-mode)

;; ranger
  (global-set-key (kbd "C-x C-r") 'ranger)
  (setq ranger-excluded-extensions '("gpg")) ; do not try to decrypt for preview

;; evil
  ;order is important here
  (setq evil-want-abbrev-expand-on-insert-exit nil)
  (setq evil-want-C-u-scroll t)
  (require 'evil)
  (define-key evil-normal-state-map (kbd "M-.") nil)
  (evil-mode 1)
  ; custom functions to make [j] [k] work nicely with both wrapped lines and motions
  ; courtesy of [https://github.com/emacs-evil/evil/issues/817]
  (evil-define-motion my-evil-previous-line (count)
    :type line
    (let ((command (if count 'evil-previous-line 'evil-previous-visual-line)))
      (funcall command (prefix-numeric-value count))))
  (evil-define-motion my-evil-next-line (count)
    :type line
    (let ((command (if count 'evil-next-line 'evil-next-visual-line)))
      (funcall command (prefix-numeric-value count))))
  (define-key evil-motion-state-map (kbd "k") 'my-evil-previous-line)
  (define-key evil-motion-state-map (kbd "j") 'my-evil-next-line)
  (evil-set-undo-system 'undo-tree)

;; GPG
  (setq epa-pinentry-mode 'loopback)
  (setq epa-file-cache-passphrase-for-symmetric-encryption t)

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

  ; habit tracking
  (require 'org)
  (add-to-list 'org-modules 'org-habit t)

  ; todo keywords
  (setq org-todo-keywords
	'((sequence "ACTN" "CURR" "|" "DONE")
	  (sequence "|" "FAIL")
	  (sequence "|" "JUNK")))
  (setq org-todo-keyword-faces
        '(("CURR" . (:foreground "orange" :weight bold :background "gray16"))
          ("FAIL" . (:foreground "black" :background "gray20"))
          ("JUNK" . (:foreground "black" :background "gray20"))))
  (with-eval-after-load 'org
    (define-key org-mode-map (kbd "C-c C-<return>") 'org-todo))

  ; archival
  (setq org-archive-location "~/org/amygdala/org-archive.org::")
  (setq org-archive-save-context-info '(time file))

;; markdown
  (add-to-list 'auto-mode-alist '("\\.page\\'" . markdown-mode))

;; 80-column rule rules
  ; auto-reflow to 80 by default
  (setq-default fill-column 80)
  ; [whitespace-mode] will highlight lines over 80
  (setq-default
   whitespace-line-column 80
   whitespace-style       '(face lines-tail))

;; proof general + company-coq
  (setq coq-smie-user-tokens '(("≈" . "=") ("≡" . "="))) ; proper indentation for equivalence symbols
  (setq proof-splash-enable nil)
  (add-hook 'coq-mode-hook 'company-coq-mode)
  (add-hook 'coq-mode-hook 'undo-tree-mode)
  (put 'company-coq-fold 'disabled nil)
  ;; TODO: these should ideally go in [company-coq-mode] and [company-coq-map]
  (with-eval-after-load 'coq-mode
    (progn
      (define-key coq-mode-map (kbd "C-c d") 'company-coq-diff-unification-error)))
  ; I do not understand how this works,
  ; but it changes the repective backgrounds in Proof General
  ; taken from [https://github.com/ejgallego/pruf-general]
  (custom-set-faces
   '(proof-queue-face
     ((((type x) (class color) (background dark)) (:background "dark slate gray"))) t)
   '(proof-locked-face
     ((((type x) (class color) (background dark)) (:background "gray8"))) t))


;; python
  (add-hook 'python-mode-hook 'elpy-enable)


;; haskell
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)

; --- startup ---
(ranger)
