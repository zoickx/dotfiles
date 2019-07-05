(defun get-fullpath (@file-relative-path)
  (concat (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path))

(load (get-fullpath "clean.el"))
(load (get-fullpath "sanity.el"))
(load (get-fullpath "packages.el"))

(ranger)
