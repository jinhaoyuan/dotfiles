;;; init-undo-tree.el
;;; Commentary:
;;; Code:
(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil)
  :bind ("C-c u" . tsc-undo-tree)
  :config
  (transient-define-prefix tsc-undo-tree ()
    "Prefix for Undo-Tree commands"
    ["Undo-Tree"
     ("u" "undo"  undo-tree-undo :transient t)
     ("r" "redo"  undo-tree-redo :transient t)
     ("s" "save"  undo-tree-save-history :transient t)
     ("l" "load"  undo-tree-load-history :transient t)
     ("v" "visual" undo-tree-visualize)]))
(provide 'init-undo-tree)
;;; init-undo-tree.el ends here
