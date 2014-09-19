(add-to-list 'load-path "contrib")
(add-to-list 'load-path ".")

(defun emacs-wiki-elint-files ()
  (require 'elint)
  (elint-initialize)

  (defvar nomessage t)
  (load "emacs-wiki" nil nomessage)
  (dolist (dir '("." "./contrib"))
    (dolist (file (directory-files dir nil "\\.el$"))
      (setq file (substring file 0 (string-match "\\.el$" file)))
      (load file nil nomessage)))

  (add-to-list 'elint-standard-variables 'current-prefix-arg)
  (add-to-list 'elint-standard-variables 'command-line-args-left)
  (add-to-list 'elint-standard-variables 'buffer-file-coding-system)
  (add-to-list 'elint-standard-variables 'save-some-buffers-action-alist)
  (add-to-list 'elint-standard-variables 'emacs-major-version)
  (add-to-list 'elint-standard-variables 'emacs-minor-version)
  (add-to-list 'elint-standard-variables 'emacs-version)
  (add-to-list 'elint-standard-variables 'window-system)
  (add-to-list 'elint-standard-variables 'debug-on-error)
  (add-to-list 'elint-standard-variables 'emacs-wiki-mode-abbrev-table)
  (dolist (file command-line-args-left)
    (find-file file)
    (message "Checking %s ..." file)
    (elint-current-buffer)
    (with-current-buffer (elint-get-log-buffer)
      (goto-char (point-min))
      (forward-line 2)
      (while (not (or (eobp)
                      (looking-at "^Linting complete")))
        (message (buffer-substring (emacs-wiki-line-beginning-position)
                                   (emacs-wiki-line-end-position)))
        (forward-line 1)))
    (kill-buffer (current-buffer))))
