;;;;;;;;;; init-icons 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-icons start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package nerd-icons
  :demand t
  :custom
(nerd-icons-font-family "UbuntuNerdFont")
)
(use-package all-the-icons-ivy-rich
  :demand t
  :init (all-the-icons-ivy-rich-mode 1))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-icons)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-icons end here
