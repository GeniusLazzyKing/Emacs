;;;;;;;;;; xxx模块 ;;;;;;;;;;
;;;; Desc:

;;;; xxx start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package company
             :config
             (setq company-dabbrev-code-verywhere t
                   company-dabbrev-code-modes t
                   company-dabbrev-code-other-buffers 'all
                   company-dabbrev-downcase nil
                   company-dabbrev-ignore-case t
                   company-dabbrev-other-buffers 'all
                   company-require-match nil
                   company-minimum-prefix-length 2
                   company-show-numbers t
                   company-tooltip-timit 20
                   company-idle-delay 0
                   company-echo-delay 0
                   company-tooltip-offset-display 'scrollbar
                   company-brgin-commands '(self-insert-command))
             (push '(company-semantic :with company-yasnippet) company-backends)
             :hook ((after-init . global-company-mode)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-company)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; xxx end here
