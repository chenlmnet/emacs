;;;; CC-mode配置
(require 'cc-mode)
(setq c-basic-offset 4)
(defun my-make-CR-do-indent ()
(define-key c-mode-base-map "\C-m" 'c-context-line-break))
(add-hook 'c-initialization-hook 'my-make-CR-do-indent)

(defun my-c-mode-common-hook ()
;;    (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
;;	(define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods)
	;;(add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
(add-hook 'c-mode-common-hook 'highlight-indentation-mode)

;;;; python
(defun my-python-mode-hook ()
	(global-semantic-idle-scheduler-mode nil) ;;关闭对Python的解析，卡得一b
)

(add-hook 'python-mode-hook 'my-python-mode-hook)
(add-hook 'python-mode-hook 'highlight-indentation-mode)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional
(provide 'init-cc-mode)    
