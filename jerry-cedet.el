;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
(load-file "~/site-lisp/cedet-1.1/common/cedet.el")

(semantic-load-enable-minimum-features)  
(semantic-load-enable-code-helpers)  
(semantic-load-enable-guady-code-helpers)  
(semantic-load-enable-excessive-code-helpers)  
;(semantic-load-enable-s-debugging-helpers)  
;; Enable EDE (Project Management) features  
(global-ede-mode 1)  
(global-set-key [f4] 'speedbar)  

;(global-ede-mode 1)                      ; Enable the Project management system
;
;(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;
;(global-srecode-minor-mode 1)            ; Enable template insertion menu


(provide 'jerry-cedet)