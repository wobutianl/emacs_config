
; yasnippet
(add-to-list 'load-path
             "~/site-lisp/yasnippet-0.6.1c")
(require 'yasnippet)

(yas/initialize)
(yas/load-directory "~/site-lisp/yasnippet-0.6.1c/snippets")

(yas/global-mode 1)

(global-set-key (kbd "C-;") 'yas/expand)

;; @see http://stackoverflow.com/questions/7619640/emacs-latex-yasnippet-why-are-newlines-inserted-after-a-snippet
;(setq-default mode-require-final-newline nil)
(provide 'init-yasnippet)
