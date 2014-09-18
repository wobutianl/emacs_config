;;jerry-emms

;; emms 配置
;;; setup emms
(add-to-list 'load-path
             (expand-file-name "~/site-lisp/emms-3.0"))

;(require 'emms-source-file)
;(require 'emms-source-playlist)
;(require 'emms-player-simple)
;(require 'emms-player-mplayer)
;(require 'emms-playlist-mode)
;(require 'emms-info)
;(require 'emms-cache)
;(require 'emms-mode-line)
;(require 'emms-playing-time)
;(require 'emms-score)
;(require 'emms-volume)


(require 'emms-setup)
(emms-default-players)
(emms-standard)


;; autodetect musci files id3 tags encodeing
(require 'emms-i18n)

;; auto-save and import last playlist
(require 'emms-history)

(setq emms-playlist-default-major-mode 'emms-playlist-mode)
(add-to-list 'emms-track-initialize-functions 'emms-info-initialize-track)
(add-to-list 'emms-info-functions 'kid-emms-info-simple)
(setq emms-track-description-function 'kid-emms-info-track-description)
(when (fboundp 'emms-cache)
  (emms-cache 1))
  
(setq emms-player-list
      '(emms-player-mpg321
        emms-player-ogg123
        emms-player-mplayer))
(setq emms-info-asynchronously nil)
(setq emms-playlist-buffer-name "*Music*")
; use faster finding facility if you have GNU find
(setq emms-source-file-directory-tree-function 'emms-source-file-directory-tree-find)


; My musics  我的音乐目录
(setq emms-source-file-default-directory "D:/kugou")
(add-hook 'emms-player-started-hook 'emms-show)

; mode line format
(setq emms-mode-line-format "[ %s "
      emms-playing-time-display-format "%s ]")
(setq global-mode-string
    '("" emms-mode-line-string " " emms-playing-time-string "" display-time-string))

(defun kid-emms-info-simple (track)

;Get info from the filename.
;mp3 标签的乱码问题总是很严重，幸好我系统里面的音乐文件
;都放得比较有规律，所以我决定直接从文件名获取标签信息。"
  (when (eq 'file (emms-track-type track))
    (let ((regexp "/\\([^/]+\\)/\\([^/]+\\)\\.[^.]+$")
          (name (emms-track-name track)))
      (if (string-match regexp name)
          (progn
            (emms-track-set track 'info-artist (match-string 1 name))
            (emms-track-set track 'info-title (match-string 2 name)))
          (emms-track-set track
                          'info-title
                          (file-name-nondirectory name))))));	  


(defun kid-emms-info-track-description (track)
  "Return a description of the current track."
  (let ((artist (emms-track-get track 'info-artist))
        (title (emms-track-get track 'info-title)))
    (format "%-10s +| %s"
            (or artist
                "")
            title)));
			
			
;; my customizable playlist format 播放列表
(defun bigclean-emms-info-track-description (track)
  "Return a description of the current track."
  (let ((artist (emms-track-get track 'info-artist))
        (title (emms-track-get track 'info-title))
        (album (emms-track-get track 'info-album))
        (ptime (emms-track-get track 'info-playing-time)))
    (if title 
        (format 
         "%-35s %-40s %-35s %5s:%-5s"
         (if artist artist "")
         (if title title "")
         (if album album "")
         (/ ptime 60)
         (% ptime 60)))))
(setq emms-track-description-function
      'bigclean-emms-info-track-description)
	  
;; format current track,only display title in mode line  状态栏
(defun bigclean-emms-mode-line-playlist-current ()
  "Return a description of the current track."
  (let* ((track (emms-playlist-current-selected-track))
         (type (emms-track-type track))
         (title (emms-track-get track 'info-title)))
    (format "[ %s ]"
            (cond ((and title)
                   title)))))
(setq emms-mode-line-mode-line-function
      'bigclean-emms-mode-line-playlist-current)
			
			
;; global key-map  快捷键
;; all global keys prefix is C-c e
;; compatible with emms-playlist mode keybindings
;; you can view emms-playlist-mode.el to get details about 
;; emms-playlist mode keys map
(global-set-key (kbd "C-c e s") 'emms-stop)
(global-set-key (kbd "C-c e P") 'emms-pause)
(global-set-key (kbd "C-c e n") 'emms-next)
(global-set-key (kbd "C-c e p") 'emms-previous)
(global-set-key (kbd "C-c e f") 'emms-show)
(global-set-key (kbd "C-c e >") 'emms-seek-forward)
(global-set-key (kbd "C-c e <") 'emms-seek-backward)

;; these keys maps were derivations of above keybindings
;(global-set-key (kbd "C-c e S") 'emms-start)
(global-set-key (kbd "C-c e g") 'emms-playlist-mode-go)
(global-set-key (kbd "C-c e t") 'emms-play-directory-tree)
(global-set-key (kbd "C-c e h") 'emms-shuffle)
(global-set-key (kbd "C-c e e") 'emms-play-file)
(global-set-key (kbd "C-c e l") 'emms-play-playlist)
(global-set-key (kbd "C-c e r") 'emms-toggle-repeat-track)
(global-set-key (kbd "C-c e R") 'emms-toggle-repeat-playlist)
(global-set-key (kbd "C-c e u") 'emms-score-up-playing)
(global-set-key (kbd "C-c e d") 'emms-score-down-playing)
(global-set-key (kbd "C-c e o") 'emms-score-show-playing)			
		
;; playlist-mode-map
(define-key emms-playlist-mode-map (kbd "SPC") 'emms-pause)
(define-key emms-playlist-mode-map (kbd "+") 'emms-volume-raise)
(define-key emms-playlist-mode-map (kbd "-") 'emms-volume-lower)
(define-key emms-playlist-mode-map (kbd "<right>")
  (lambda () (interactive) (emms-seek +10)))
(define-key emms-playlist-mode-map (kbd "<left>")
  (lambda () (interactive) (emms-seek -10)))
(define-key emms-playlist-mode-map (kbd "<up>")
  (lambda () (interactive) (emms-seek +60)))
(define-key emms-playlist-mode-map (kbd "<down>")
  (lambda () (interactive) (emms-seek -60)))
(define-key emms-playlist-mode-map (kbd "S u") 'emms-score-up-file-on-line)
(define-key emms-playlist-mode-map (kbd "S d") 'emms-score-down-file-on-line)
(define-key emms-playlist-mode-map (kbd "S o") 'emms-score-show-file-on-line)
(define-key emms-playlist-mode-map (kbd "S l") 'emms-score-less-tolerant)
(define-key emms-playlist-mode-map (kbd "S m") 'emms-score-more-tolerant)
(define-key emms-playlist-mode-map (kbd "S t") 'emms-score-set-tolerance)
(define-key emms-playlist-mode-map (kbd "S s") 'emms-score-show-playing)



		
(provide 'jerry-emms)

;;; jerry-emms.el ends here
