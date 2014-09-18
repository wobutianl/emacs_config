(load-file "~/site-lisp/tabbar-ruler.el")
(require 'tabbar)
(tabbar-mode t)
;M-x tabbar-forward：   跳转到下一个可见的tab
;M-x tabbar-backward：  跳转到前一个可见的tab
(global-set-key [(control tab)] 'tabbar-backward)
(global-set-key [(control shift tab)]       'tabbar-forward)

(global-set-key (kbd "<M-up>")    'tabbar-backward-group)  
(global-set-key (kbd "<M-down>")  'tabbar-forward-group)  
