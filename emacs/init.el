;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; 设定源码加载路径
;; (require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; Adjust garbage collection thresholds during startup, and thereafter

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq confirm-kill-emacs #'yes-or-no-p)      ; 在关闭 Emacs 前询问是否确认关闭，防止误x触
(electric-pair-mode t)                       ; 自动补全括号
(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(setq inhibit-startup-message t)             ; 关闭启动 Emacs 时的欢迎界面
(setq make-backup-files nil)                 ; 关闭文件自动备份
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块
;(global-display-line-numbers-mode 1)         ; 在 Window 显示行号
(dolist (mode '(text-mode-hook prog-mode-hook conf-mode-hook))
  (add-hook mode
            (lambda ()
              (display-line-numbers-mode 1))))

(tool-bar-mode -1)                           ; （熟练后可选）关闭 Tool bar
(menu-bar-mode -1)                           ; （熟练后可选）关闭 Menu bar
(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条

(savehist-mode 1)                            ; （可选）打开 Buffer 历史记录保存
;(setq display-line-numbers-type 'relative)   ; （可选）显示相对行号
(pixel-scroll-precision-mode t) 

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)

(eval-when-compile  (require 'use-package))


(require 'transient)
(require 'init-proxy)
(require 'init-theme)
(require 'init-hydra)
(require 'init-which-key)
;(require 'init-helm)
(require 'init-ace-window)
(require 'init-mwim)
(require 'init-undo-tree)
(require 'init-doom-modeline)
(require 'init-avy)
(require 'init-multiple-cursors)
(require 'init-marginalia)
(require 'init-vertico)
(require 'init-orderless)
(require 'init-consult)
(require 'init-embark)
(require 'init-dashboard)
(require 'init-project)
(require 'init-highlight-symbol)
(require 'init-ui)
(require 'init-corfu)
(require 'init-flycheck)
;(require 'init-lsp-bridge)
(require 'init-dap-mode)
(require 'init-magit)
(require 'init-program-mode)
(require 'init-treemacs)
(require 'init-org)

(provide 'init)
;;; init.el ends here






