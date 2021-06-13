;;;; This file is loaded before [init.el], the package system, and the GUI
;;;; [https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html]

;;; recommended by straight.el
(setq package-enable-at-startup nil)

;;; GUI sanity
(scroll-bar-mode 0)
(tool-bar-mode 0)
(menu-bar-mode 0)
