; pdb setup, note the python version
;pdb 是用来调试，直接运行是用：pdb ->  python **.py

(setq pdb-path 'C:/Python32/Lib/pdb.py
       gud-pdb-command-name (symbol-name pdb-path))
 (defadvice pdb (before gud-query-cmdline activate)
   "Provide a better default command line when called interactively."
   (interactive
    (list  (gud-query-cmdline pdb-path
                 (file-name-nondirectory buffer-file-name)))))
				
				
;(autoload 'pymacs-apply "pymacs")
;(autoload 'pymacs-call "pymacs")
;(autoload 'pymacs-eval "pymacs" nil t)
;(autoload 'pymacs-exec "pymacs" nil t)
;(autoload 'pymacs-load "pymacs" nil t)
;				
;			
;(add-to-list 'load-path "~/site-lisp")				
;(require 'pycomplete)
;(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
;(autoload 'python-mode "python-mode" "Python editing mode." t)
;(setq interpreter-mode-alist(cons '("python" . python-mode)
;                           interpreter-mode-alist))				
				 
(provide 'jerry-pyPDB)