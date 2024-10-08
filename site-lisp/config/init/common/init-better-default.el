
;;;;;;;;;; init-better-default 模块 ;;;;;;;;;;
;;;; Desc:
;; 优化 Emacs 的默认行为
;;;; init-better-defaulr start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 设置英文字体
(set-face-attribute 'default nil :family "FiraCodeNerdFontMono")
;; 设置中文字体
(set-fontset-font t 'han (font-spec :family "FiraCodeNerdFontMono"))
;; 括号高亮
(show-paren-mode 1)
;; 全屏
(add-to-list 'default-frame-alist '(fullscreen . fullboth))
;; 光标样式
(setq-default cursor-type 'box)
;; 光标闪烁
(blink-cursor-mode -1)
;; 光标颜色
(set-cursor-color "#d5c4a1")
;; 设置行号模式
(setq display-line-numbers-type 'relative)
;; 全局启用行号显示
(global-display-line-numbers-mode t)
;; 制表符
(setq-default indent-tabs-mode t)
(setq-default tab-width 2)
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-better-default)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;  init-better-default end here
