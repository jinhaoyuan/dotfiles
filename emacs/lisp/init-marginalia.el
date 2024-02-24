;;; init-marginalia.el
;;; Commentary:
;;; Code:
(use-package marginalia
  :ensure t
  :init (marginalia-mode)
  :bind (:map minibuffer-local-map
			  ("M-A" . marginalia-cycle)))
(provide 'init-marginalia)
;;; init-marginalia.el ends here
