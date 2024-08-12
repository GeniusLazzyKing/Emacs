;;;;;;;;;; init-lsp-mode 模块 ;;;;;;;;;;
;;;; Desc:
;; 这个模块用于配置 LSP (Language Server Protocol) 支持，包括对 Rust 语言的支持
;;;; init-lsp-mode start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 本模块不依赖其他模块
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
(use-package rust-mode)

(use-package lsp-mode
    :hook (rust-mode . lsp-deferred)
    :commands (lsp lsp-deferred))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
;; 提供 init-lsp-mode 模块
(provide 'init-lsp-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-lsp-mode end here

