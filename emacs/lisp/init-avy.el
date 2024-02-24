;;; init-avy.el
;;; Commentary:
;;; Code:
(use-package avy
  :ensure t
  :bind
  (("C-:" . avy-goto-char-timer)
   ("C-c a" . tsc-avy))
  :config
  (transient-define-prefix tsc-avy ()
    "Prefix for Avy commands"
    [["Line"
     ("y" "Yank" avy-copy-line :transient t)
     ("m" "Move" avy-move-line :transient t)
     ("k" "Kill" avy-kill-whole-line :transient t)]
    ["Region"
     ("Y" "Yank" avy-copy-region :transient t)
     ("M" "Move" avy-move-region :transient t)
     ("K" "Kill" avy-kill-region :transient t)]
    ["Goto"
     ("c" "Timed Char" avy-goto-char-timer :transient t)
     ("C" "Char" avy-goto-char :transient t)
     ("w" "Word" avy-goto-word-1 :transient t)]
    [""
     ("W" "Any Word" avy-goto-word-0 :transient t)
     ("l" "Line" avy-goto-line :transient t)
     ("L" "End of Line" avy-goto-end-of-line :transient t)]]))

(provide 'init-avy)
;;; init-avy.el ends here
