;;; package --- Summary
;;;; 需要的包
(require-package 'window-numbering) 
(require-package 'auto-complete) 
(require-package 'popup)
(require-package 'yasnippet)
(require-package 'autopair)
(require-package 'smex)
(require-package 'helm)
(require-package 'helm-gtags)
(require-package 'flycheck)
(require-package 'jedi)
(require-package 'undo-tree)
(require-package 'ido-ubiquitous)
(require-package 'monokai-theme)
(require-package 'emacs-eclim)
(require-package 'company)
(require-package 'highlight-indentation) ;;show vertical guide lines of indentation levels

;;;; 自定义
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'protobuf-mode)
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))
(require 'smart-compile)
(add-to-list 'smart-compile-alist
             '("*.py" . "pyflakes"))
(add-to-list 'smart-compile-alist
             '("./.*" . "make"))
(add-to-list 'smart-compile-alist
             '("\\.py\\'" . "pyflakes %f"))
;;(add-to-list 'load-path "~/.emacs.d/elpa/window-numbering-20130902.930")


;;;; 设定语言环境为utf-8
(setq current-language-environment "utf-8")
(setq locale-coding-system 'utf-8)
(setq set-terminal-coding-system 'utf-8)
(setq set-keyboard-coding-system 'utf-8)
(setq set-selection-coding-system 'utf-8)
(setq prefer-coding-system 'utf-8)

;;滚动页面时比较舒服，不要整页的滚动  
(setq     scroll-step 1  
          scroll-margin 3  
          scroll-conservatively 10000)  

;;跳转到某行  
(global-set-key [(meta g)] 'goto-line)  

;;在模式栏中显示当前光标所在函数  
(which-function-mode)  

;;菜单栏设置
(menu-bar-mode -1) ;;不显示菜单栏
;;;; 高亮显示成对括号
;; enable ShowParenMode
(setq show-paren-delay 0)
;(setq show-paren-style ‘parenthesis)
;(setq show-paren-style ‘expression)
(setq show-paren-style 'mixed)
(show-paren-mode t)

;;------------------------------------------------------------------------------
;; 缓冲区
;;------------------------------------------------------------------------------
;;;; 设定行距
(setq default-line-spaceing 4)
;;;; 页宽
(setq-default fill-column 80)
;;;; 缺省模式 text-mode
(setq default-major-mode 'text-mode)
;;;; 设置一个很大的kill ring
(setq kill-ring-max 300)
(setq require-final-newline t)
;;;; 开启语法高亮
(setq global-font-lock-mode t)
;;;;高亮显示区域选择
(setq transient-mark-mode t)

;;;; 光标靠近鼠标指针时，让鼠标指针自动离开
(mouse-avoidance-mode 'animate)
;;;; 粘贴于光标处,而不是鼠标指针处
(setq mouse-yank-at-point t)
;;------------------------End 缓冲区-----------------------

;;------------------------------------------------------------------------------
;; 回显区
;;------------------------------------------------------------------------------
;;;; 锁定行高
(setq resize-mini-windows nil)
;;;; 递归minibuffer
(setq enable-recursive-minibuffers t)
;;------------------------End 回显区-----------------------

                                        ;------------------------------------------------------------------------------
;; 编辑器的设定
;;------------------------------------------------------------------------------
;;;; 不产生备份文件
(setq make-backup-files nil)
;;;; 不生成临时文件
(setq-default make-backup-files nil)
;;;; 只渲染当前屏幕语法高亮，加快显示速度
(setq lazy-lock-defer-on-scrolling t)
(setq font-lock-maximum-decoration t)

;;;; 显示80列就换行
(add-hook 'message-mode-hook (lambda()
                               (setq default-fill-column 80)
                               (turn-on-auto-fill)))

;;;; 设置tab宽度为4
(setq-default indent-tabs-mode nil)
(setq tab-width 4 c-basic-offset 4)
(setq indent-line-function 'insert-tab)
(defun indent-buffer ()
  "Indent the whole buffer."
  (interactive)
  (save-excursion
    (indent-region (point-min) (point-max) nil)))
(global-set-key [f4] 'indent-buffer)
;;;; 以y/n代表yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;;; 状态栏：显示时间
(display-time)
(setq display-time-mode t)
(setq display-time-24hr-format t)
;;;; 时间显示包括日期和具体时间
(setq display-time-day-and-date t)

;;;; 让Emacs可以直接打开和显示图片
(setq auto-image-file-mode t)

(setq cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(setq transient-mark-mode t) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;;;; 在行首C-k时，同时删除该行
(setq-default kill-whole-line t)
;;;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;;;; 当浏览man page时，直接跳转到man buffer
(setq Man-notify-method 'pushy)

;;;; 设置时间戳，标识出最后一次保存文件的时间。
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chenyang")
;;------------------------End 编辑器的设定-----------------------
;;;; 关闭烦人的出错时的提示声
(setq visable-bell t)
;;窗口undo
(when (fboundp 'winner-mode) 
  (winner-mode) 
  (windmove-default-keybindings))

;;打开上次的文件记录
;;(load "desktop")
;;(desktop-load-default)
;;(desktop-read)
;;当emacs退出时保存文件打开状态
;;(add-hook 'kill-emacs-hook
;;                   '(lambda()(desktop-save "~/")))

;; autorevert stuff
(autoload 'auto-revert-mode "autorevert" nil t)
(autoload 'turn-on-auto-revert-mode "autorevert" nil nil)
(autoload 'global-auto-revert-mode "autorevert" nil t)
(global-auto-revert-mode 1)

;;org-mode
(setq org-startup-indented t)
;;set gdbwindow
;;(setq gdb-many-windows t)
;;ssh
(require 'tramp)
(setq tramp-default-method "ssh")
(add-to-list 'tramp-remote-path "/bin/bash")
;;;; window-number
(window-numbering-mode t)
;;;; undo-tree
(global-undo-tree-mode t)
;;linum
(global-linum-mode 1)
(setq linum-format "%d ")
(provide 'init-base)

