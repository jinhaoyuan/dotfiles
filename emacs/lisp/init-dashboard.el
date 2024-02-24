;;; init-dashboard.el
;;; Commentary:
;;; Code:
;; use-package with package.el:
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Welcome to Maxwell's Emacs")
  (setq dashboard-projects-backend 'project-el)
  (setq dashboard-startup-banner 'official)
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 5)
                        (bookmarks . 5)
                        (projects . 5)
                        (agenda . 5)
                        (registers . 5))))

(provide 'init-dashboard)
;;; init-dashboard.el ends here
