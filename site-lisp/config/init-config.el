;;;;;;;;;; 包加载入口 ;;;;;;;;;; 
;;;; common start：通用设置
;; 更好的默认设置
(require 'init-better-default)
;; 加载包
(require 'init-package)
;; 主题设置
(require 'init-theme)
;; 图标设置
(require 'init-icons)
;; 编辑设置
(require 'init-editor)
;; 界面外观设置
(require 'init-ui)
;; 启动界面
(require 'init-dashboard)
;; 实用工具
(require 'init-tools)
;; org-mode
(require 'init-org)
;; ivy
(require 'init-ivy)
;; 语言的支持
(require 'init-code)
;; Lsp
(require 'init-lsp-mode)
;; player
(require 'init-player)
;; 自动补全
(require 'init-company)
;;;; common end 

;;;; plugin start：插件初始化设置

;;; plugin end

;; 提供init-config模块
(provide 'init-config)
