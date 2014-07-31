;;;;ECB  
(add-to-list 'load-path  
                   "~/site-lisp/ecb-2.40")  
(require 'ecb)  
;;;;禁止每日提醒  
;(setq ecb-auto-activate t)
(setq ecb-tip-of-the-day nil)
	  
;;;; 各窗口间切换

(global-set-key [M-left] 'windmove-left)

(global-set-key [M-right] 'windmove-right)

(global-set-key [M-up] 'windmove-up)

(global-set-key [M-down] 'windmove-down)

 

;;;; 隐藏和显示ecb窗口

(define-key global-map [(control f1)] 'ecb-hide-ecb-windows)

(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

 

;;;; 使某一ecb窗口最大化

;(define-key global-map "/C-c1" 'ecb-maximize-window-directories)
;
;(define-key global-map "/C-c2" 'ecb-maximize-window-sources)
;
;(define-key global-map "/C-c3" 'ecb-maximize-window-methods)
;
;(define-key global-map "/C-c4" 'ecb-maximize-window-history)

;;;; 恢复原始窗口布局

;(define-key global-map "/C-c`" 'ecb-restore-default-window-sizes)
	
	
(provide 'jerry-ecb)