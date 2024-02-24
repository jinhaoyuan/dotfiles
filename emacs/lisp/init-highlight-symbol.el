;;; init-hightlight-sysbol.el
;;; Commentary:
;;; Code:
(use-package highlight-symbol
  :ensure t
  :init (highlight-symbol-mode)
  :bind ("" . highlight-symbol)) ;; 按下 F3 键就可高亮当前符号
(provide 'init-highlight-symbol)
;;; init-highlight-symbol.el ends here
