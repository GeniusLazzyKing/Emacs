;;;;;;;;;; .emacs.d全局配置文件入口 ;;;;;;;;;;

;; 递归遍历加载路径，将这些路径加入到加载列表中
(defun add-subdirs-to-load-path(dir)
  "Recursive add directories to `load-path`"
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

;; 递归加载~/.emacs.d/site-lisp目录
(add-subdirs-to-load-path "~/.emacs.d/site-lisp/")

;; 加载init-config模块
(require 'init-config)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(vterm rust-mode restart-emacs rainbow-delimiters page-break-lines org-bullets lsp-mode ligature ivy-posframe gruvbox-theme doom-modeline dashboard counsel-projectile company all-the-icons-ivy-rich)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
