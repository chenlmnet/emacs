;;;; package --- Summary
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-candidate-face ((t (:inherit popup-face :background "color-236" :foreground "green"))))
 '(ac-clang-candidate-face ((t (:background "color-234" :foreground "color-154"))) t)
 '(ac-clang-selection-face ((t (:background "color-229" :foreground "white"))) t)
 '(company-preview-common ((t (:inherit company-preview :foreground "#FFFAFA" :underline t))))
 '(company-tooltip-selection ((t (:inherit company-tooltip :background "#AFEEEE" :foreground "#349B8D"))))
 '(flymake-errline ((t (:inherit error :foreground "red" :underline t))) t)
 '(highlight-indentation-current-column-face ((t (:inherit fringe :background "color-236"))))
 '(highlight-indentation-face ((t (:inherit fringe))))
 '(hl-line ((t (:background "black"))))
 '(hl-line-face ((t (:background "brightblack"))) t)
 '(linum ((t nil))))
;;(global-linum-mode nil)

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;; elpa
(require 'init-elpa)
;;base
(require 'init-base)
;;cc-mode
(require 'init-cc-mode)
;;cedet
;;(require 'init-cedet)
;;ido
(require 'init-ido)
;;ibuffer
(require 'init-ibuffer)
;;info-look
(require 'init-info-look)
;;;; 高亮当前行
(require 'hl-line)
(global-hl-line-mode 1)
;;;; ac
(require 'init-ac)
;;yansippet
(require 'init-yasnippet)
(require 'init-key)
;;(require 'init-douban)
(require 'init-autopair)
;;(require 'init-clang)
;;(require 'init-clang-async)
;;(require 'init-py-mode)
;;(require 'init-evil)
(require 'init-neotree)
(require 'init-smex)
(require 'init-helm)
(require 'init-gtags)
(require 'auto-inc)
(require 'gccsense)
(require 'init-eclim)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-clang-cflags (quote ("-I./" "-I./include" "-I../include" "-I../../include" "-I../../../include" "-I/usr/local/include" "-I/home/a/include" "-I/home/a" "-I/usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2" "-I/usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2/x86_64-redhat-linux" "-I/usr/lib/gcc/x86_64-redhat-linux/4.1.2/../../../../include/c++/4.1.2/backward" "-I/usr/local/include" "-I/usr/lib/gcc/x86_64-redhat-linux/4.1.2/include" "-I/usr/include")))
 '(ansi-color-names-vector ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" "f5e9f66da69f504cb61aacedeb8284d8f38f2e6f835fd658cac5f0ad5d924549" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "f3d2144fed1adb27794a45e61166e98820ab0bbf3cc7ea708e4bf4b57447ee27" "9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" default)))
 '(eclim-eclipse-dirs (quote ("/Applications/eclipse")))
 '(eclim-executable "/Applications/eclipse/eclim")
 '(explicit-shell-file-name "/bin/bash")
 '(fci-rule-color "#383838")
 '(helm-gtags-auto-update t)
 '(helm-gtags-ignore-case t)
 '(helm-gtags-path-style (quote relative))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map (quote ((20 . "#BC8383") (40 . "#CC9393") (60 . "#DFAF8F") (80 . "#D0BF8F") (100 . "#E0CF9F") (120 . "#F0DFAF") (140 . "#5F7F5F") (160 . "#7F9F7F") (180 . "#8FB28F") (200 . "#9FC59F") (220 . "#AFD8AF") (240 . "#BFEBBF") (260 . "#93E0E3") (280 . "#6CA0A3") (300 . "#7CB8BB") (320 . "#8CD0D3") (340 . "#94BFF3") (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))


