;;;;;;;;;; init-ivy 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-ivy start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package swiper
  :bind
  (("C-s" . swiper)
   ("C-r" . swiper)
   ("C-c" . ivy-resume)
   ("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)))

(use-package counsel
  :hook
  ('counsel-mode . 'dashboard-mode)
  :bind
  (("C-x C-r" . 'counsel-recentf)))

(use-package ivy
  :init
  (ivy-mode 1))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1)
  :custom
  (ivy-format-function #'ivy-format-function-line)
  (setq ivy-rich-display-transformers-list
        '(ivy-switch-buffer
          (:columns
           ((ivy-rich-switch-buffer-icon (:width 2))   ; 图标
            (ivy-rich-candidate (:width 30))           ; 缓冲区名称
            (ivy-rich-switch-buffer-size (:width 7))   ; 缓冲区大小
            (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))  ; 指示器
            (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))            ; 主模式
            (ivy-rich-switch-buffer-project (:width 15 :face success))               ; 所属项目
            (ivy-rich-switch-buffer-path
             (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path
                                  x (ivy-rich-minibuffer-width 0.3))))              ; 路径
            (ivy-rich-switch-buffer-filename (:width 10))  ; 文件名
            (ivy-rich-switch-buffer-directory (:width 10)) ; 目录
            (ivy-rich-switch-buffer-modified-time (:width 12 :face font-lock-comment-face)))) ; 修改时间
           :predicate
           (lambda (cand) (get-buffer cand)))
					counsel-find-file
					(:columns
					 ((ivy-read-file-transformer)
						(ivy-rich-counsel-find-file-truename (:face font-lock-doc-face))))
					counsel-M-x
					(:columns
					 ((counsel-M-x-transformer (:width 40))
						(ivy-rich-counsel-function-docstring (:face font-lock-doc-face))))
					)))

(use-package ivy-posframe
  :init
  (ivy-posframe-mode 1)
  :custom
  (ivy-posframe-parameters
   '((left-fringe . 8)
     (right-fringe . 8)))
  (ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-ivy)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-ivy end her
