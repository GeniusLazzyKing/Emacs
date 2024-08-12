;;;;;;;;;; init-better-default 模块 ;;;;;;;;;;
;;;; Desc:
;; 优化 Emacs 的默认行为
;;;; init-better-defaulr start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 确认提示
(fset 'yes-or-no-p 'y-or-n-p)
;; var文件路径
(setq user-emacs-directory "~/.emacs.d/var")
;; 最近打开文件缓存路径
(setq recentf-save-file "~/.emacs.d/var/recentf")
;; 书签文件路径
(setq bookmark-default-file "~/.emacs.d/var/bookmarks")
;; 自动保存路径
(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/.saves-")
;; eshell历史记录路径
(setq eshell-history-file-name "~/.emacs.d/var/eshell/history")
;; 关闭备份
(setq make-backup-files nil
      auto-save-default nil)
;; 系统编码
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
;; 垃圾回收
(setq gc-cons-threshold most-positive-fixnum)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-better-default)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;  init-better-default end here
