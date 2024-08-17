;;;;;;;;;; init-player 模块 ;;;;;;;;;;
;;;; Desc:

;;;; init-play start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 音乐播放器
(use-package bongo
	:bind
	("<f2>" . bongo-init)
	:config
	(defun bongo-init ()
				 (interactive)
				 (let ((buffer (current-buffer)))
					 (bongo)
					 (setq bongo-insert-whole-directory-trees "ask")
					 (bongo-insert-file "~/Music")
					 (bongo-insert-enqueue-region (point-min)
																				(point-max))
					 (bongo-play-random)
					 (switch-to-buffer buffer))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-player)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-player end here
