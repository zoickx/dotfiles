(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq package-selected-packages '(org-bullets racer rust-mode company-coq proof-general magit which-key base16-theme smooth-scrolling ranger evil base16-theme))
(package-install-selected-packages)

;; color theme
  (load-theme 'base16-google-dark t)

;; smooth-scrolling
  (smooth-scrolling-mode 1)

;; ranger
  (global-set-key (kbd "C-x C-r") 'ranger)

;; magit
  (global-set-key (kbd "C-x C-m") 'magit-status)

;; which-key
  (which-key-mode)

;; org-mode
  ;; pretty bullets everywhere
  (require 'org-bullets)
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode t)))
  ;; set default org directory
  (setq org-dir "~/org")
  ;; set a default file and a capture command
  (setq org-default-notes-file (concat org-dir "/inbox.org"))
  (define-key global-map "\C-cc" 'org-capture)

;; evil
  ;; order is important here
  (setq evil-want-abbrev-expand-on-insert-exit nil)
  (setq evil-want-C-u-scroll t)
  (require 'evil)
  (define-key evil-normal-state-map (kbd "M-.") nil)
  (evil-mode 1)

;; proof general + coq + company-coq
  (setq proof-splash-enable nil)
  (add-hook 'coq-mode-hook 'company-coq-mode)
  (add-hook 'coq-mode-hook 'undo-tree-mode)

;; rust + racer
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
  (add-hook 'racer-mode-hook #'company-mode)
  (require 'rust-mode)
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t)
  (define-key rust-mode-map (kbd "C-c C-d") #'racer-describe)
