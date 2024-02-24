;;; init-helm.el
;;; Commentary:
;;; Code:
(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  :bind(
	("M-x" . 'helm-M-x)
	("C-x C-f" . 'helm-find-files)
	("C-x b" . 'helm-mini)
	("C-x C-b" . 'helm-buffers-list)
	("C-s" . 'helm-occur)
	("M-y" . 'helm-show-kill-ring)
  )
)
(provide 'init-helm)
;;; init-helm.el ends here
