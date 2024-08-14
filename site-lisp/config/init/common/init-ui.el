;;;;;;;;;; init-ui 模块 ;;;;;;;;;;
;;;; Desc:
;; 用于设置 Emacs 的基本用户界面配置
;;;; init-ui start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 菜单栏
(menu-bar-mode -1)
;; 工具栏
(tool-bar-mode -1)
;; 滚动条
(scroll-bar-mode -1)
;; 图标
(use-package nerd-icons
  :demand t
  :custom
(nerd-icons-font-family "FiraCodeNerdFontMono")
  )
;; 分割线
(use-package page-break-lines
  :config
  (turn-on-page-break-lines-mode))
;; 状态栏
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-ui)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-ui end here
