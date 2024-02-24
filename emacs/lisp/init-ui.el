;;; init-ui.el
;;; Commentary:
;;; Code:
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))
;(use-package solaire-mode
;  :ensure t
;  :config
;  (solaire-global-mode +1))
(provide 'init-ui)
;;; init-ui.el ends here
