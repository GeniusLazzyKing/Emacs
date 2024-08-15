;;;;;;;;;; editor 模块 ;;;;;;;;;;
;;;; Desc:

;;;; editor start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 连字
(use-package ligature
  :demand t
  :config
;; 启用连字的模式
  (ligature-set-ligatures 'prog-mode '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
                                       "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
                                       "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
                                       "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
                                       ".-" ".=" ".." "..<" "..." "?=" "??" ";;"
                                       "/*" "/**" "/=" "/==" "/>" "//" "///" "&&"
                                       "||" "||=" "|=" "|>" "^=" "$>" "++" "+++"
                                       "+>" "=:=" "==" "===" "==>" "=>" "=>>" "<="
                                       "=<<" "=/=" ">-" ">=" ">=>" ">>" ">>-" ">>="
                                       ">>>" "<*" "<*>" "<|" "<|>" "<$" "<$>" "<!--"
                                       "<-" "<--" "<->" "<+" "<+>" "<=" "<==" "<=>"
                                       "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~" "<~~"
                                       "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"))

;; 在所有编程模式下启用连字
  (global-ligature-mode t))
;; 多彩括号
(use-package
  rainbow-delimiters
  :demand t
  :config
  (set-face-foreground 'rainbow-delimiters-depth-1-face "#458588")
  (set-face-foreground 'rainbow-delimiters-depth-2-face "#b16286")
  (set-face-foreground 'rainbow-delimiters-depth-3-face "#689d6a")
  (set-face-foreground 'rainbow-delimiters-depth-4-face "#d79921")
  (set-face-foreground 'rainbow-delimiters-depth-5-face "#d65d0e")
  (set-face-foreground 'rainbow-delimiters-depth-6-face "#8ec07c")
  (set-face-foreground 'rainbow-delimiters-depth-7-face "#fabd2f")
  (set-face-foreground 'rainbow-delimiters-depth-8-face "#d3869b")
  (set-face-foreground 'rainbow-delimiters-depth-9-face "#83a598")
  
  (set-face-bold 'rainbow-delimiters-depth-1-face "#458588")
  (set-face-bold 'rainbow-delimiters-depth-2-face "#b16286")
  (set-face-bold 'rainbow-delimiters-depth-3-face "#689d6a")
  (set-face-bold 'rainbow-delimiters-depth-4-face "#d79921")
  (set-face-bold 'rainbow-delimiters-depth-5-face "#d65d0e")
  (set-face-bold 'rainbow-delimiters-depth-6-face "#8ec07c")
  (set-face-bold 'rainbow-delimiters-depth-7-face "#fabd2f")
  (set-face-bold 'rainbow-delimiters-depth-8-face "#d3869b")
  (set-face-bold 'rainbow-delimiters-depth-9-face "#83a598")
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-editor)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; editor end here
