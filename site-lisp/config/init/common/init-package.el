;;;;;;;;; init-package 模块 ;;;;;;;;;;
;;;; Desc:
;; 配置 Emacs 包管理源，初始化包管理系统，确保包列表是最新的，并安装 `use-package` 包。
;;;; init-package start here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Require:
;; 无依赖项
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Code:
;; 设置包安装目录
(setq package-user-dir "~/.emacs.d/site-lisp/extension/")
;; 添加新插件目录到 load-path
(add-to-list 'load-path "~/.emacs.d/site-lisp/extension/")
;; 源
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;; 签名检查
(setq package-check-signature nil)
;; 使用包管理器
(require 'package)
;; 初始化包管理器
(unless (bound-and-true-p package--initialized)
  (package-initialize))
;; 刷新软件索引源
(unless package-archive-contents
  (package-refresh-contents))
;; 安装 use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; use-package 选项配置
(setq use-package-always-ensure t)
(setq use-package-always-defer t)
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-package-verbose t)
;; 使用 use package
(require 'use-package)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Provide:
(provide 'init-package)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; init-package end here
