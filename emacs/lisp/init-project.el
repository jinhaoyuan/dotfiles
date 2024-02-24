;;; init-project.el
;;; Commentary:
;;; Code:
(require 'project)
(defcustom project-root-markers
  '("Cargo.toml" "flake.nix" "init.el" ".git")
  "Files or directories that indicate the root of a project."
  :type '(repeat string)
  :group 'project)
(defun project-root-p (path)
  "Check if the current PATH has any of the project root markers."
  (catch 'found
    (dolist (marker project-root-markers)
      (when (file-exists-p (concat path marker))
        (throw 'found marker)))))

(defun project-find-root (path)
  "Search up the PATH for `project-root-markers'."
  (when-let ((root (locate-dominating-file path #'project-root-p)))
    (cons 'transient (expand-file-name root))))
(add-to-list 'project-find-functions #'project-find-root)

(require 'keymap) ;; keymap-substitute requires emacs version 29.1?
(require 'cl-seq)

(keymap-substitute project-prefix-map #'project-find-regexp #'consult-ripgrep)
(cl-nsubstitute-if
  '(consult-ripgrep "Find regexp")
  (pcase-lambda (`(,cmd _)) (eq cmd #'project-find-regexp))
  project-switch-commands)
(provide 'init-project)
;;; init-project.el ends here
