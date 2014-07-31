;;; jerry-language.el ---
;;; Code:

; MS Windows�������������� ====
;(set-default-font "-outline-����-normal-normal-normal-*-16-*-*-*-p-*-iso8859-1")

;(setq default-frame-alist
;(append
;'((font . "fontset-chinese")) default-frame-alist))
;(create-fontset-from-fontset-spec
;"-outline-Courier New-normal-r-normal-normal-13-97-96-96-c-*-fontset-chinese")
;(set-fontset-font
;"fontset-default" nil
;"-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'kana
;"-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'han
;"-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'cjk-misc
;"-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-fontset-font
;"fontset-chinese" 'symbol
;"-outline-������-normal-r-normal-normal-14-*-96-96-c-*-iso10646-1" nil 'prepend)
;(set-default-font "fontset-chinese")


;(set-language-environment 'UTF-8)
;;
;(set-keyboard-coding-system 'utf-8)
;;�ն˵ı���
;(set-terminal-coding-system 'utf-8)
;;buffer�����ֵı���
;;(set-buffer-file-coding-system 'utf-8)
;;
;(set-selection-coding-system 'utf-8)
;(set-clipboard-coding-system 'utf-8)
;;ʹ��utf-8��ʾ�ļ���
;(set-file-name-coding-system 'utf-8)
;;
;(modify-coding-system-alist 'process "*" 'utf-8)
;(setq default-process-coding-system '(utf-8 . utf-8))
;(setq-default pathname-coding-system 'utf-8)

;; Emacs ��֧�� gb18030����� gb2312 �ܿ������Ϳ������������Ϳ������ˣ�
;; ������Ϊ gb18030 Ҳ�� gb2312 �ա�
;(define-coding-system-alias 'gb18030 'gb2312)

;; ;;
; (set-language-environment 'utf-8)
;; ;;
;; (setq locale-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (set-clipboard-coding-system 'ctext)
;; (set-buffer-file-coding-system 'utf-8)

(prefer-coding-system 'utf-8)


;; Setting English Font
(set-face-attribute
'default nil :font "Consolas 11")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "Microsoft Yahei" :size 16)))

;;�������
;;
(setq font-encoding-alist
  (append
  '(("MuleTibetan-0" (tibetan . 0))
  ("GB2312" (chinese-gb2312 . 0))
  ("GBK" (chinese-gbk . 0))
  ("JISX0208" (japanese-jisx0208 . 0))
  ("JISX0212" (japanese-jisx0212 . 0))
  ("VISCII" (vietnamese-viscii-lower . 0))
  ("KSC5601" (korean-ksc5601 . 0))
  ("MuleArabic-0" (arabic-digit . 0))
  ("MuleArabic-1" (arabic-1-column . 0))
  ("MuleArabic-2" (arabic-2-column . 0)))
  font-encoding-alist))




(provide 'jerry-language)

;;; jerry-language.el ends here
