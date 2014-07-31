;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; key binding 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [f1] 'other-window)
;; ��ת�� Emacs ����һ��buffer����

(global-set-key [f2] 'undo)  ;; undo
(global-set-key [f3] 'redo)	 ;; redo

;;set the F4 to kill current buffer
(global-set-key [f4] 'kill-this-buffer) 

(define-key global-map [f5] 'org-clock-in)
(define-key global-map [f6] 'org-clock-out)

;;����f9����speedbar����
(global-set-key [f9] 'speedbar)

(define-key global-map [f12] 'org-remember)
(define-key global-map [f11] 'org-capture)