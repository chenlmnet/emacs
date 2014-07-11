;;helm
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-imenu)
(cua-mode -1) ;; helm will enable cua-mode, key conflict
;; flycheck
(add-hook 'after-init-hook 'global-flycheck-mode)
(provide 'init-helm)
