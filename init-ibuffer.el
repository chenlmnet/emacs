;;;; 启用ibuffer支持，增强*buffer*
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(provide 'init-ibuffer)
