;;;;;;;;;; init-dashboard模块 ;;;;;;;;;;
;;;; Desc:
;; 启动界面
;;;; init-dashboard start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 启动界面
(use-package dashboard
	:demand t
  :diminish dashboard-mode
  :custom-face
  (dashboard-heading ((t (:inherit (font-lock-string-face bold):foreground "#fb4934"))))
  (dashboard-items-face ((t (:weight normal))))
  (dashboard-no-items-face ((t (:weight normal))))
	:hook
	(dashboard-mode . (lambda () (setq-local frame-title-format nil)))
	:init
  (setq
	 dashboard-banner-logo-title "Genius only means hard-working all one's life."
   dashboard-startup-banner "~/.emacs.d/var/banner/nerv.png"
   dashboard-center-content t
   dashboard-vertically-center-content t
   dashboard-show-shortcuts nil
				
   dashboard-items '((recents   . 3)
                     (bookmarks . 3)
                     (projects  . 3)
                     (agenda    . 3)
                     (registers . 3))
				
	 dashboard-item-shortcuts '((recents   . "r")
                              (bookmarks . "m")
                              (projects  . "p")
                              (agenda    . "a")
                              (registers . "e"))
				
	 dashboard-startupify-list '(dashboard-insert-banner
                               dashboard-insert-newline
                               dashboard-insert-banner-title
                               dashboard-insert-newline
                               dashboard-insert-navigator
                               dashboard-insert-newline
                               dashboard-insert-init-info
                               dashboard-insert-items
                               dashboard-insert-newline
                               dashboard-insert-footer)
	 )
	(dashboard-setup-startup-hook)
	)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-dashboard)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-dashboard end here
