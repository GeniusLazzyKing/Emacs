;;;;;;;;;; init-ui 模块 ;;;;;;;;;;
;;;; Desc:
;; 用于设置 Emacs 的基本用户界面配置
;;;; init-ui start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 浮动窗口
(use-package posframe)
;; 状态栏
(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-ui)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-ui end here
