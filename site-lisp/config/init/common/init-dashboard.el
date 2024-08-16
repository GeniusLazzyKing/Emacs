;;;;;;;;;; init-dashboard 模块 ;;;;;;;;;;
;;;; Desc:
;; Dashboard
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
	 dashboard-startup-banner "~/.emacs.d/var/banner/Evangelion-red.png"
	 dashboard-banner-logo-title "Welcome Back"
	 dashboard-set-heading-icons t
	 dashboard-set-file-icons t
   dashboard-center-content t
   dashboard-vertically-center-content t
   dashboard-show-shortcuts nil
	 dashboard-items
	 '((recents   . 3)
     (bookmarks . 3)
     (projects  . 3)
     (agenda    . 3)
     (registers . 3))
	 dashboard-item-shortcuts
	 '((recents   . "r")
     (bookmarks . "m")
     (projects  . "p")
     (agenda    . "a")
     (registers . "e"))
	 dashboard-startupify-list
	 '(dashboard-insert-banner
     dashboard-insert-banner-title
     dashboard-insert-navigator
     dashboard-insert-init-info
     dashboard-insert-items
     dashboard-insert-footer)
	 dashboard-heading-icons
	 '((recents   . "nf-oct-history")
     (bookmarks . "nf-oct-bookmark")
     (agenda    . "nf-oct-calendar")
     (projects  . "nf-oct-briefcase")
     (registers . "nf-oct-database"))
	 dashboard-navigator-buttons
	 `(((,(nerd-icons-mdicon "nf-md-github" :height 1.4)
       "Homepage"
       "Browse homepage"
       (lambda (&rest _) (browse-url "https://github.com/GeniusLazzyKing/Emacs")))

			(,(nerd-icons-mdicon "nf-md-update" :height 1.3)
       "Update" "Update Emacs"
       (lambda (&rest _) (package-refresh-contents) ( package-install-selected-packages)))
			
			(,(nerd-icons-mdicon "nf-md-tools" :height 1.4)
				"Settings"
				"Settings"
				(lambda (&rest _) (find-file "~/.emacs.d")))
			
			(,(nerd-icons-mdicon "nf-md-help" :height 1.1)
       ""
			 "Help (?/h)"
       (lambda (&rest _) )))))
	(dashboard-setup-startup-hook)
	:config
      (delete-other-windows)
      (dashboard-refresh-buffer)
	)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-dashboard)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-dashboard end here
