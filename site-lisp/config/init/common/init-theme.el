;;;;;;;;;; init-theme 模块 ;;;;;;;;;;
;;;; Desc:
;; 配置并加载 `gruvbox` 主题。
;;;; init-theme start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package gruvbox-theme
             :init (load-theme 'gruvbox-dark-medium t))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-theme)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-theme end here
