(require 'eclim)
(require 'eclimd)
(global-eclim-mode)
(custom-set-variables
 '(eclim-eclipse-dirs '("/Applications/eclipse"))
 '(eclim-executable "/Applications/eclipse/eclim"))
;;(setq help-at-pt-display-when-idle t)
;;(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)
(setq eclimd-default-workspace "~/Documents/workspace/")

(require 'company)
(require 'company-emacs-eclim)
(company-emacs-eclim-setup)
(global-company-mode t)
(add-hook 'java-mode-hook
          (lambda ()
            (local-set-key (kbd "M-,") 'company-complete)
            ))

(provide 'init-eclim)
