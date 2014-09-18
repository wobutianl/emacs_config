;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;; key binding ;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key [f1] 'other-window)  ;; 跳转到 Emacs 的另一个buffer窗口

(global-set-key [f2] 'undo)
(global-set-key [f3] 'redo)

(global-set-key [f4] 'kill-this-buffer)  ;; kill current buffer


(global-set-key [f5] 'eshell)      ;;打开一个终端，eshell,shell,terminal-emulator

(define-key global-map [f6] 'org-clock-in)
(define-key global-map [f7] 'org-clock-out)


(global-set-key [f9] 'speedbar)   ;;设置f9调用speedbar命令


(define-key global-map [f12] 'org-remember)
(define-key global-map [f11] 'org-capture)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;注释region
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key [(meta   m)] 'comment-region)
(global-set-key [(meta   u)] 'uncomment-region)

;;快速切换buffer,prior就是上翻页pg up,next就是pg dn键盘
(global-set-key [C-prior] 'swbuff-switch-to-previous-buffer)
(global-set-key [C-next] 'swbuff-switch-to-next-buffer)

;;C-x C-r ,TAP列出最近打开的文件列表
;(global-set-key "\C-x\C-r" 'recentf-open-files-compl)

;;几个小游戏
;(global-set-key (kbd "C-z p g") 'gomoku)
;(global-set-key (kbd "C-z p t") 'tetris)
;;训练绑定键盘的－看看你能记住多少热键
;;(global-set-key (kbd "C-z p k") 'keywiz)


