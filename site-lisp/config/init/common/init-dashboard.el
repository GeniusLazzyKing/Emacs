;;;;;;;;;; init-dashboard模块 ;;;;;;;;;;
;;;; Desc:
;; 启动界面
;;;; init-dashboard start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 启动界面
(setq inhibit-startup-message nil)
(use-package dashboard
  :demand t
  :config
  ;; 启动时显示 Dashboard
  (dashboard-setup-startup-hook)
  ;; 标题和横幅
  (setq dashboard-startup-banner "~/.emacs.d/var/banner/nerv.png")
  (setq dashboard-banner-logo-title "Genius only means hard-working all one's life.")
  ;; 居中显示
  (setq dashboard-center-content t)
  (setq dashboard-vertically-center-content t)
  ;; 关闭每个部分的快捷方式指示
  (setq dashboard-show-shortcuts nil)
  ;; 设置显示的项目及数量
  (setq dashboard-items '((recents   . 3)    ; 最近文件
                          (bookmarks . 3)    ; 书签
                          (projects  . 3)    ; 项目
                          (agenda    . 3)    ; Org-agenda
                          (registers . 3)))  ; 寄存器
  ;; 自定义小部件的快捷方式
  (setq dashboard-item-shortcuts '((recents   . "r")
                                   (bookmarks . "m")
                                   (projects  . "p")
                                   (agenda    . "a")
                                   (registers . "e")))
  )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-dashboard)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-dashboard end here
