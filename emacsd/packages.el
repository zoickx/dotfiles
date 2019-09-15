(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq pkgs nil)
(setq pkgs (append pkgs '(evil ranger smooth-scrolling))) ; sanity
(setq pkgs (append pkgs '(magit which-key)))              ; QOL
(setq pkgs (append pkgs '(base16-theme)))                 ; theme
(setq pkgs (append pkgs '(proof-general company-coq)))    ; coq
(setq pkgs (append pkgs '(racer rust-mode)))              ; rust
(setq pkgs (append pkgs '(intero)))                       ; haskell
(setq package-selected-packages pkgs)

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
  ; sane indentation for lists
  (setq org-startup-indented t)
  ; symbol to be shown over headings with content
  (setq org-ellipsis "ˇ")
  ; add timestamps for task completion
  (setq org-log-done 'time)
  ; allow whitespace between items
  (setq org-cycle-separator-lines -1)
  ; directory org-todos are gathered from)
  (setq org-agenda-files '("~/org/project"))

  (with-eval-after-load 'org
    (define-key org-mode-map (kbd "C-c C-<return>") 'org-todo))

;; proof general + company-coq
  (setq proof-splash-enable nil)
  (add-hook 'coq-mode-hook 'company-coq-mode)
  (add-hook 'coq-mode-hook 'undo-tree-mode)
  (put 'company-coq-fold 'disabled nil)

;; rust + racer
  (add-hook 'rust-mode-hook 'racer-mode)
  (add-hook 'racer-mode-hook 'eldoc-mode)
  (add-hook 'racer-mode-hook 'company-mode)
  (setq company-tooltip-align-annotations t)
  (with-eval-after-load 'rust-mode
    (progn
      (define-key rust-mode-map (kbd "TAB") 'company-indent-or-complete-common)
      (define-key rust-mode-map (kbd "C-c C-d") 'racer-describe)))

;; term
  ; use C-x as escape char
  (defun term-c-x-escape (&rest ignored)
    (term-set-escape-char 24))
  (advice-add 'term :after #'term-c-x-escape)
