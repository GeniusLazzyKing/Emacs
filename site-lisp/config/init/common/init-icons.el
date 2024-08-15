;;;;;;;;;; init-icons 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-icons start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package all-the-icons)
(use-package nerd-icons
  :demand t
  :custom
(nerd-icons-font-family "FiraCodeNerdFont")
)
(use-package all-the-icons-ivy-rich
  :ensure t
  :init (all-the-icons-ivy-rich-mode 1))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-icons)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-icons end here
