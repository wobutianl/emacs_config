;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;   jerry org GTD
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(require 'org-install)
(require 'org-remember)

(setq org-default-notes-file "~/ToDo/newgtd.org")
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)

;;;;;;;;;;;;;remember-mode	  记忆模式  c-c c-r  
;;;;;   inbox, idea, movie, blog2publish, journal, clipboard, finance, book, movie, daily
(setq org-remember-templates
   '(
   ("New" ?n "** %^{Brief Description}  " 	"~/ToDo/inbox.org" "Remember")
    )
  )

;;;;;;;org-capture c-c c-c    
(setq org-capture-templates
    '(
	("t" "todo" entry (file+datetree "~/ToDo/newgtd.org" "TODO")
      "* TODO %^{TODO} %^g " :prepend t)

	("d" "Diary" entry (file+datetree "~/ToDo/diary.org")
     "* %?\nEntered on %U\n %i\n %a")
	 
	("l" "log" entry (file+datetree "~/ToDo/log.org")
      "* Log %^{Log } %^g " :prepend t)
	  
	("s" "daylife" entry (file+datetree "~/ToDo/daylife.org")
      "* %?\nEntered on %U\n %i\n %a")
	 
	("q" "question" entry (file+datetree "~/ToDo/question.org")
     "* Q: %^{Question} %^g\n     A: ")
	 )
	 
;;	("f" "todo" entry (file+datetree "~/ToDo/newgtd.org" "TODO")
;;     "* FINISH %^{TODO} %^g " :prepend t)
)
 	
;;;;;;;;;;;org-agenda c-c c-a  agenda 查找的路径
(setq org-agenda-files (list  "~/ToDo"))
	
;;;;c-c  c-t  todo 关键字
(setq org-todo-keywords
  '((type "TODO(t!)" "WAITING(w!)" "STARTED(s!)" "|")
    (sequence "DONE(d!)" "ABORT(a@/!)")
))

;;;;;;;;;;;;;  save  clock time 
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;;;;;;; c-c c-c  标识。确定在什么环境下用的
(setq org-agenda-custom-commands
'(
  ("p" "Projects"
   ((tags "PROJECT")))
  ("h" "Office and Home Lists"
   ((agenda)
    (tags-todo "@READING")
    (tags-todo "@CODE")
    (tags-todo "@WORKING")	
	(tags-todo "@ENTERTAIN")
    (tags-todo "@SPORT")
    ))

  ("d" "Daily Action List"
   (
    (agenda "" ((org-agenda-ndays 1)
        (org-agenda-sorting-strategy
         (quote ((agenda time-up priority-down tag-up) )))
        (org-deadline-warning-days 0)
        ))))))
		
;设置关键字颜色
(setq org-todo-keyword-faces
  '(("started" .      (:background "red" :foreground "white" :weight bold))
    ("WAITING" .   (:background "LightGreen" :foreground "gray" :weight bold))
    ("TODO" .      (:background "DarkOrange" :foreground "black" :weight bold))
    ("DONE" .      (:background "azure" :foreground "Darkgreen" :weight bold)) 
    ("ABORT" .     (:background "gray" :foreground "black"))
))

;; 优先级范围和默认任务的优先级  
(setq org-highest-priority ?A)
(setq org-lowest-priority  ?E)
(setq org-default-priority ?E)

;; 优先级醒目外观
(setq org-priority-faces
  '((?A . (:background "red" :foreground "white" :weight bold))
    (?B . (:background "DarkOrange" :foreground "white" :weight bold))
    (?C . (:background "yellow" :foreground "DarkGreen" :weight bold))
    (?D . (:background "DodgerBlue" :foreground "black" :weight bold))
    (?E . (:background "SkyBlue" :foreground "black" :weight bold))
))

;;;设置任务依赖关系
(setq org-enforce-todo-dependencies t)

;; 设置农历
(add-to-list 'load-path "~/site-lisp")
(require 'cal-china-x)

;;日历显示节日标记
(setq mark-holidays-in-calendar t)

(setq my-holidays
    '(;;公历节日
      (holiday-fixed 2 14 "情人节")
      (holiday-fixed 9 10 "教师节")
      (holiday-float 6 0 3 "父亲节")
      ;; 农历节日
      (holiday-lunar 1 1 "春节" 0)
      (holiday-lunar 1 15 "元宵节" 0)
      (holiday-solar-term "清明" "清明节")
      (holiday-lunar 5 5 "端午节" 0)
      (holiday-lunar 7 7 "七夕情人节" 0)
      (holiday-lunar 8 15 "中秋节" 0)
      ;;纪念日
      (holiday-fixed 1 1 "儿子生日")
      (holiday-lunar 6 1 "brother"  0)
      (holiday-lunar 2 24 "我的生日" 0)
))
(setq calendar-holidays my-holidays)  ;只显示我定制的节假日

;忽略截至任务提醒
(setq org-agenda-skip-deadline-prewarning-if-scheduled t)

; 忽略开始任务提醒
(setq org-agenda-skip-scheduled-delay-if-deadline t)


(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))

(defun gtd ()
    (interactive)
    (find-file "~/ToDo/newgtd.org"))
	
(defun log ()
    (interactive)
    (find-file "~/ToDo/log.org"))
	
(defun mydiary ()
    (interactive)
   (find-file "~/ToDo/diary.org"))
   
(defun wiki ()
    (interactive)
   (find-file "~/file/wiki.org"))
   
(defun question ()
    (interactive)
   (find-file "~/ToDo/remember/question.org"))
   


;; used by org-clock-sum-today-by-tags ;;; 时钟统计
(defun filter-by-tags ()
   (let ((head-tags (org-get-tags-at)))
     (member current-tag head-tags)))

(defun w (timerange &optional tstart tend noinsert)       
  (interactive "P")                                                                 
  (let* ((timerange-numeric-value (prefix-numeric-value timerange))                 
         (files (org-add-archive-files (org-agenda-files)))                         
         (include-tags '("@stc_READING" "@stc_CODE" "@stc_WORKING" "@stc_ENTERTAIN"    "@stc_SPORT"  "@home_LEARN" "@home_PLAY" ))						                                   
         (tags-time-alist (mapcar (lambda (tag) `(,tag . 0)) include-tags))        
         (output-string "")
         (tstart (or tstart
                     (and timerange (equal timerange-numeric-value 4) (- (org-time-today) 86400))
                     (and timerange (equal timerange-numeric-value 16) (org-read-date nil nil nil "Start Date/Time:"))
                     (org-time-today)))
         (tend (or tend
                   (and timerange (equal timerange-numeric-value 16) (org-read-date nil nil nil "End Date/Time:"))
                   (+ tstart 86400)))
         h m file item prompt donesomething)
    (while (setq file (pop files))
      (setq org-agenda-buffer (if (file-exists-p file)
                                  (org-get-agenda-file-buffer file)
                                (error "No such file %s" file)))
      (with-current-buffer org-agenda-buffer
        (dolist (current-tag include-tags)
          (org-clock-sum tstart tend 'filter-by-tags)
          (setcdr (assoc current-tag tags-time-alist)
                  (+ org-clock-file-total-minutes (cdr (assoc current-tag tags-time-alist)))))))
    (while (setq item (pop tags-time-alist))
      (unless (equal (cdr item) 0)
        (setq donesomething t)
        (setq h (/ (cdr item) 60)
              m (- (cdr item) (* 60 h)))
        (setq output-string (concat output-string (format "[-%s-] %.2d:%.2d\n" (car item) h m)))))
    (unless donesomething
      (setq output-string (concat output-string "[-Nothing-] Done nothing!!!\n")))
    (unless noinsert
        (insert output-string))
    output-string))   

(org-babel-do-load-languages
    'org-babel-load-languages '((emacs-lisp . t)))	
 
 


(add-hook 'org-agenda-mode-hook 'hl-line-mode)


