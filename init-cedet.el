;;------------------------------------------------------------------------------
;;cedet
;;------------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/common")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/contrib")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-2.1/ede")
(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/semantic")
;(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/srecode")
;(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/cogre")
;(add-to-list 'load-path "~/.emacs.d/plugins/cedet-1.1/eieio")

;;(require 'cedet)
(load-file "~/.emacs.d/plugins/cedet-1.1/common/cedet.el")
;(global-ede-mode 1)                      ; Enable the Project management system

;;------------------------------------------------------------------------------
;;semantic
;;------------------------------------------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; TAGS Menu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;(defun my-semantic-hook ()
;  (imenu-add-to-menubar "TAGS"))

;(add-hook 'semantic-init-hooks 'my-semantic-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Semantic DataBase�洢λ��
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq semanticdb-default-save-directory
      (expand-file-name "~/.emacs.d/semanticdb"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; semanticdb ����ʹ���������߲�����Tag������GNU Global������Tags�� ���԰�������Ĵ��������ã�
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ʹ�� gnu global ��TAGS��
;;(require 'semantic/db-global)
;;(semanticdb-enable-gnu-global-databases 'c-mode)
;;(semanticdb-enable-gnu-global-databases 'c++-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; semantic����
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)
;;(semantic-load-enable-guady-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)

;; (setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list "." ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public"
        "/home/a/include/"))

(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))


;;������ת        
(global-set-key [f8] 'semantic-ia-fast-jump)  
;;������ʵ�ּ���ת                    
(define-key c-mode-base-map [f9] 'semantic-analyze-proto-impl-toggle)                          

;;(global-set-key [S-f1]
;;                (lambda ()
;;                  (interactive)
;;                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
;;                      (error "Semantic Bookmark ring is currently empty"))
;;                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
;;                         (alist (semantic-mrub-ring-to-assoc-list ring))
;;                         (first (cdr (car alist))))
;;                    (if (semantic-equivalent-tag-p (oref first tag)
;;                                                   (semantic-current-tag))
;;                        (setq first (cdr (car (cdr alist)))))
;;                    (semantic-mrub-switch-tags first))))
;;

(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)
(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-c , =") 'semantic-tag-folding-show-block)
;; ����buffer���к���ߡ�B�cչ�_
(define-key semantic-tag-folding-mode-map (kbd "C-c . -") 'semantic-tag-folding-fold-all)
(define-key semantic-tag-folding-mode-map (kbd "C-c . =") 'semantic-tag-folding-show-all)

;;------------------------------------------------------------------------------
;;���벹ȫ
;;------------------------------------------------------------------------------

;;(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol-menu)
;;(add-to-list 'load-path "~/.emacs-config/plugins/auto-complete-1.3.1")
;;(add-to-list 'load-path "~/.emacs.d/elpa/auto-complete-1.4")
;;(require 'auto-complete-config)
;;(global-auto-complete-mode t)

;;(defun ac-complete-semantic-self-insert (arg) 
;;  (interactive "p") 
;;  (self-insert-command arg) 
;;  (ac-complete-semantic))
;;
;;(defun cc-mode-ac-key-bindings () 
;;  (local-set-key "." 'ac-complete-semantic-self-insert) 
;;  (local-set-key ">" 'ac-complete-semantic-self-insert)
;;  (local-set-key ":" 'ac-complete-semantic-self-insert))
;;
;;(add-hook 'c-mode-common-hook 'cc-mode-ac-key-bindings)
;;;;(define-key c-mode-base-map (kbd "M-n") 'ac-complete-semantic-self-insert)
;;(global-set-key (kbd "M-n") 'ac-complete-semantic-self-insert)


;;------------------------------------------------------------------------------
;;EDE����
;;------------------------------------------------------------------------------
;(enable-visual-stud(require 'ede nil 'noerror)
;(global-ede-mode t)


;;------------------------------------------------------------------------------
;;���ӻ���ǩ
;;------------------------------------------------------------------------------
;;(add-to-list 'load-path "~/.emacs-config/plugins/cedet-1.1/eieio")
;;(require 'eieio nil 'noerror)
;(enable-visual-studio-bookmarks)
(provide 'init-cedet)
