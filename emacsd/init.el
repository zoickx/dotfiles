(defun get-fullpath (@file-relative-path)
  (concat (file-name-directory (or load-file-name buffer-file-name)) @file-relative-path))

(load (get-fullpath "defaults.el"))
(load (get-fullpath "packages.el"))

(ranger)
