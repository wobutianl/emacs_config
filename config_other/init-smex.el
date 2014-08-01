<<<<<<< HEAD
(autoload 'smex "~/site-lisp/smex/smex" nil t)
=======
(autoload 'smex "smex" nil t)
>>>>>>> facdc4b9e60be7bab87d5cb23583fc67928026ab
;; (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'init-smex)
