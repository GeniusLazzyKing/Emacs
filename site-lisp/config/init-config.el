;;;;;;;;;; 包加载入口 ;;;;;;;;;; 
;;;; common start：通用设置
;; 更好的默认设置
(require 'init-better-default)
;; 按键绑定
;; (require 'init-key-binding)
;; 加载包
(require 'init-package)
;; 主题设置
(require 'init-theme)
;; 编辑设置
(require 'init-editor)
;; 界面外观设置
(require 'init-ui)
;; 启动界面
(require 'init-dashboard)
;; 实用工具
(require 'init-tools)
;;;; common end 

;;;; plugin start：插件初始化设置
;; 聊天
(require 'init-chat)
;; Lsp
(require 'init-lsp-mode)
;; 自动补全
(require 'init-company)
;;; plugin end

;; 提供init-config模块
(provide 'init-config)
