;; w3m
(add-to-list 'exec-path "~/el/w3m")
(add-to-list 'load-path "~/site-lisp/w3m-lisp")
(require 'w3m-load)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq debug-on-error t)
(setq w3m-home-page "http://www.baidu.com") 

(provide 'jerry-w3m)