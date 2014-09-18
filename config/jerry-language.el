;;; jerry-language.el ---
;;; Code:

;; Setting English Font
(set-face-attribute 'default nil :font "Consolas 11")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset(font-spec :family "Microsoft Yahei" :size 16)
))

;;×ÖÌå½âÂë
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

