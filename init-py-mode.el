                                        ;python-mode
(setq py-install-directory "~/.emacs.d/plugins/python-mode")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)
;;(autoload 'python-mode "python-mode" "Python Mode." t)
;;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

                                        ; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
                                        ; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
      '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

                                        ; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
                                        ; don't split windows
(setq py-split-windows-on-execute-p nil)
                                        ; try to automagically figure out indentation
(setq py-smart-indentation t)

;;pymakes

;;(autoload 'flymake-find-file-hook "flymake" "" t)
;;(add-hook 'find-file-hook 'flymake-find-file-hook)
;;(setq flymake-gui-warnings-enabled nil)
;;(setq flymake-log-level 0)
;;(when (load "flymake" t)
;;  (
;;   defun flymake-pycheckers-init ()
;;         (
;;          let* 
;;             (
;;              (
;;               temp-file 
;;               (
;;                flymake-init-create-temp-buffer-copy
;;                'flymake-create-temp-inplace
;;                )
;;               )
;;              (
;;               local-file 
;;               (
;;                file-relative-name
;;                temp-file
;;                (
;;                 file-name-directory buffer-file-name
;;                                     )
;;                )
;;               )
;;              )
;;           (
;;            list "pyflakes"  (list local-file)
;;                 )
;;           )
;;
;;         (add-to-list 'flymake-allowed-file-name-masks
;;                      '("\\.py\\'" flymake-pycheckers-init))
;;         )
;;  )
;;
(provide 'init-py-mode)
