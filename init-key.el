;;按键
;;;; 显示帮助命令
(global-set-key [f1] 'manual-entry)
(global-set-key [C-f1] 'info)

;;;; gdb调试
(global-set-key [f6] 'gdb)

;;;; 其他
(global-set-key [f3] 'grep-find)
;;(global-set-key [f2] 'ac-clang-syntax-check)
(global-set-key [f7] 'smart-compile)
(global-set-key [f11] 'previous-error)    ;;上一个错误  
(global-set-key [f12] 'next-error)    ;;下一个错误  
(global-set-key (kbd "C-c z") 'eshell) 
(global-set-key (kbd "C-c n") 'indent-buffer) 
(global-set-key (kbd "<f10>") 'rename-buffer)
;;(global-set-key [(meta m)] 'eassist-list-methods)
(global-set-key [(meta o)] 'ff-find-other-file)
(add-hook 'c-mode-common-hook
          (lambda ()
            ;;(local-set-key (kbd "C-c .") 'gccsense-complete)
            ;; or
            ;;(local-set-key (kbd "C-c .") 'ac-complete-gccsense)))
            (local-set-key (kbd "M-,") 'ac-complete-gccsense)))
(mapcar
 (lambda (mode)
   (let ((mode-hook (intern (concat (symbol-name mode) "-hook")))
         (mode-map (intern (concat (symbol-name mode) "-map"))))
     (add-hook mode-hook
               `(lambda nil 
                  (local-set-key 
                   (kbd "RET")
                   (or (lookup-key ,mode-map "\C-j")
                       (lookup-key global-map "\C-j"))))))) '(c-mode c++-mode python-mode cperl-mode emacs-lisp-mode java-mode html-mode lisp-mode ruby-mode sh-mode))

(provide 'init-key)
