;;; init-mwim.el
;;; Commentary:
;;; Code:
(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))
(provide 'init-mwim)
;;; init-mwim.el ends here
