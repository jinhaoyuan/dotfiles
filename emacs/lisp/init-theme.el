;;; init-theme.el --- configration theme
;;; Commentary:
;;; Code:
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)


(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

;(use-package catppuccin-theme
;  :ensure t
;  :init                  ; 在加载插件前执行一些命令
;  (load-theme 'catppuccin :no-confirm)
;  :config                ; 在加载插件后执行一些命令
;  (setq catppuccin-flavor 'macchiato) ;; or 'latte, 'macchiato, or 'mocha
;  (catppuccin-reload)
;  )
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  ; (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  ; (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))
(set-face-attribute 'default nil :height 125)
(provide 'init-theme)
;;; init-theme.el ends here
