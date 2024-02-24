;;; init-org.el
;;; Commentary:
;;; Code:
(setq org-directory (file-truename "~/Documents/orgs/"))
(setq truncate-lines nil)
(use-package org-modern
  :ensure t
  :hook (org-mode . org-modern-mode)
  :config
  (add-hook 'org-agenda-finalize-hook 'org-modern-agenda))
(provide 'init-org)
;;; init-org.el ends here
