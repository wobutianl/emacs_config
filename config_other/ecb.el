;;;;ECB  
(add-to-list 'load-path  
                   "D:/Emacs/emacs-23.2/ecb-2.40")  
(require 'ecb)  
;;;;禁止每日提醒  
(setq ecb-tip-of-the-day nil)  
;;;; 各窗口间切换  
(global-set-key [M-left] 'windmove-left)  
(global-set-key [M-right] 'windmove-right)  
(global-set-key [M-up] 'windmove-up)  
(global-set-key [M-down] 'windmove-down)   
	
	
(provide 'jerry-ecb)