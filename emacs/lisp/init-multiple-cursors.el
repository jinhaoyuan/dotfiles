;;; init-multiple-cursors.el
;;; Commentary:
;;; Code:
(use-package multiple-cursors
  :ensure t
  :bind
  (("C-c m" . tsc-multiple-cursors)
   ("C-S-<mouse-1>" . mc/toggle-cursor-on-click))
  :config
  (transient-define-prefix tsc-multiple-cursors ()
    "Prefix for Multiple Cursors commands"
    [["Up"
     ("p" "Prev" mc/mark-previous-like-this :transient t)
     ("P" "Skip" mc/skip-to-previous-like-this :transient t)
     ("M-p" "Unmark" mc/unmark-previous-like-this :transient t)]
    ["Down"
     ("n" "Next" mc/mark-next-like-this :transient t)
     ("N" "Skip" mc/skip-to-next-like-this :transient t)
     ("M-n" "Unmark" mc/unmark-next-like-this :transient t)]
    ["Miscellaneous"
     ("l" "Edit lines" mc/edit-lines)
     ("a" "Mark all" mc/mark-all-like-this)
     ("s" "Search" mc/mark-all-in-region-regexp)
     ("|" "Align with input CHAR" mc/vertical-align :transient t)
     ("0" "Insert numbers" mc/insert-numbers)
     ("A" "Insert letters" mc/insert-letters)]
    ["Cursor at point"
     ("<mouse-1>" "Click" mc/add-cursor-on-click)
     ("<down-mouse-1>" "" ignore)
     ("<drag-mouse-1>" "" ignore)]]))
(provide 'init-multiple-cursors)
;;; init-multiple-cursors.el ends here
