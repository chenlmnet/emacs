;;auto-complete clang async
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-clang-async-20130526.814")
(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-20131128.233/")
(add-to-list 'load-path "~/.emacs.d/elpa/popup-20130708.2245")
(require 'auto-complete-clang-async)

(defun ac-cc-mode-setup ()
    (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
      (setq ac-sources '(ac-source-clang-async))
        (ac-clang-launch-completion-process)
        )
(defun my-ac-config ()
    (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
      (add-hook 'auto-complete-mode-hook 'ac-common-setup)
        (global-auto-complete-mode t))

(my-ac-config)

(setq ac-clang-cflags
      (mapcar (lambda (item)(concat "-I" item))
              (split-string
               "
 ./
 ./include
 ../include
 ../../include
 ../../../include
 ../../../../include
 /usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2
 /usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2/x86_64-redhat-linux
 /usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2/backward
 /usr/local/include
 /usr/lib/gcc/x86_64-redhat-linux/4.1.2/include
 /usr/include
 /home/a/include
 /home/a
"
                                                  )))
(provide 'init-clang-async)
