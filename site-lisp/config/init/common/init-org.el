;;;;;;;;;; init-org 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-org  start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org
  )
(use-package org-bullets
  :demand t
  :after org
  :custom
  (org-bullets-bullet-list '("☯" "☰" "☱" "☲" "☳" "☴" "☵" "☶" "☷"))
  :config
  (add-hook 'org-mode-hook (lambda ()
                             (org-bullets-mode t))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-org)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-org end here
