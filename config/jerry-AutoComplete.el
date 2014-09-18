(add-to-list 'load-path "~/site-lisp/auto-complete-master")

;(add-to-list 'ac-dictionary-directories "~/site-lisp/auto-complete-master/dict")
(require 'auto-complete-config)
(ac-config-default)

;;设置比上面截图中更好看的背景颜色
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue") 

(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)   ;default is t

(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)

(setq ac-dwim t)  ;; tab

(setq ac-trigger-commands
      (cons 'backward-delete-char-untabify ac-trigger-commands))
	  
;;use C-n/C-p to select candidates
(define-key ac-complete-mode-map "\M-n" 'ac-next)
(define-key ac-complete-mode-map "\M-p" 'ac-previous)
(define-key ac-complete-mode-map "\t" 'ac-complete)
(define-key ac-complete-mode-map "\r" nil)

(setq ac-fuzzy-enable t)



