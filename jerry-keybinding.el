;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; key binding 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [f1] 'other-window)
;; 跳转到 Emacs 的另一个buffer窗口

(global-set-key [f2] 'undo)  ;; undo
(global-set-key [f3] 'redo)	 ;; redo

;;set the F4 to kill current buffer
(global-set-key [f4] 'kill-this-buffer) 

(define-key global-map [f5] 'org-clock-in)
(define-key global-map [f6] 'org-clock-out)

;;设置f9调用speedbar命令
(global-set-key [f9] 'speedbar)

(define-key global-map [f12] 'org-remember)
(define-key global-map [f11] 'org-capture)


;;; org kbd 
;;  c-c c-c  ;; org-clock-sum-today-by-tags  :: time calculate
(global-set-key (kbd "C-c g") 'gtd)
(global-set-key "\C-cl" 'org-store-link)

(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key global-map "\C-ca" 'org-agenda)