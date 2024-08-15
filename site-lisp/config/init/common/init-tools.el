;;;;;;;;;; init-tools 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-tools start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 重启emacs
(use-package restart-emacs)
;; 终端模拟器
(use-package vterm)
;; 有道翻译
(use-package youdao-dictionary
	:init
	(setq youdao-dictionary-app-key "1ba63b88565457aa"
				youdao-dictionary-secret-key "9RbpNB0T51CkYveKvrA51XaaAtxhpKo5")
	:bind
	(("C-x y t" . 'youdao-dictionary-search-at-point)
	 ("C-x y v" . ' youdao-dictionary-play-voice-at-point)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-tools)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-tools end here
