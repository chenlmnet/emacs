;;auto-complete clang
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-clang-20130526.814")
(require 'auto-complete-clang)
(setq ac-clang-auto-save t)
(setq ac-auto-start t)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
    (setq ac-clang-flags
                  (mapcar(lambda (item)(concat "-I" item))
                                        (split-string
                                                         "
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/c++/v1
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/5.0/include
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
/System/Library/Frameworks
/Library/Frameworks
 /usr/include/c++/4.4
 /usr/include/c++/4.4/i486-linux-gnu
 /usr/include/c++/4.4/backward
 /usr/local/include
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include-fixed
 /usr/include/i486-linux-gnu
 /usr/include
")))
      (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
        (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
          ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
          (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
            (add-hook 'css-mode-hook 'ac-css-mode-setup)
              (add-hook 'auto-complete-mode-hook 'ac-common-setup)
                (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
    (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)

(provide 'init-clang)
