(autoload 'doctest-mode "doctest-mode" "Python doctest editing mode." t)

(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))


;;----------------------------------------------------------------------------
;; On-the-fly syntax checking via flymake
;;----------------------------------------------------------------------------
<<<<<<< HEAD
;(eval-after-load 'python
;  '(require 'flymake-python-pyflakes))
;
;(add-hook 'python-mode-hook '(lambda ()
;                               (when *emacs24*
;                                 (anaconda-mode)
;                                 (add-to-list 'company-backends 'company-jedi)
;                                 (eldoc-mode))
;                               (flymake-python-pyflakes-load)))
;
=======
(eval-after-load 'python
  '(require 'flymake-python-pyflakes))

(add-hook 'python-mode-hook '(lambda ()
                               (when *emacs24*
                                 (anaconda-mode)
                                 (add-to-list 'company-backends 'company-jedi)
                                 (eldoc-mode))
                               (flymake-python-pyflakes-load)))

>>>>>>> facdc4b9e60be7bab87d5cb23583fc67928026ab


(provide 'init-python-mode)
