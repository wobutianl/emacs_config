(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;改变默认路径
(setenv "HOME" "C:/Jerryfive/emacs-24.3/config_red")
 
(setenv "PATH" (concat "C:/Jerryfive/emacs-24.3/config_red;" (getenv "PATH")))
 
;;set the default file path
(setq default-directory "~/")


(load "~/jerry-basic")     ;; basic set (weight, height, ==)

; auto complete  m-\补全代码
(add-to-list 'load-path "~/site-lisp/auto-complete-1.3.1")  
(require 'auto-complete-config)  
(add-to-list 'ac-dictionary-directories "~/site-lisp/auto-complete-1.3.1/dict")  
(ac-config-default)

; yasnippet
(add-to-list 'load-path
             "~/site-lisp/yasnippet-0.6.1c")
(require 'yasnippet)
(yas-global-mode 1)
(yas/load-directory "~/site-lisp/yasnippet-0.6.1c/snippets")


;; color-theme
(add-to-list 'load-path "~/site-lisp/color-theme")
(require 'color-theme) 
(color-theme-initialize) 
(color-theme-euphoria)

;(load "~/jerry-language")  ;; input type

;(load "~/jerry-smex")    ;; strength m-x

(load "~/jerry-org-other")  ;; org-mode (mydiary)

;(load "~/jerry-yasnippet")   ;; yasnippet

;(load "~/jerry-calendar")  ;; calendar

;(load "~/jerry-tabbar")  ;; tabbar

;(load "~/jerry-AutoComplete")  ;; auto complete

;(load "~/jerry-keybinding")  ;; tabbar

