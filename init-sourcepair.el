;------------------------------------------------------------------------------
;; sourcepair
;;------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'sourcepair) ;;头文件导航
(global-set-key [f12] 'sourcepair-load)
;;(define-key global-map [f1] 'sourcepair-load)
(setq sourcepair-recurse-ignore '("CVS" "bin" "lib" "Obj" "Debug" "Release" "out" ".svn"))

(provide 'init-sourcepair)
