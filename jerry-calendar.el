;;; jerry-calendar.el --- 日历设置
;;; Code:
;;日历基本配置


;;设置我所在地方的经纬度，calendar里有个功能是日月食的预测，和你的经纬度相联系的。
(setq calendar-latitude +39.9)
(setq calendar-longitude +116.4)

;;我的所在地－北京
(setq calendar-location-name "Beijing")

;;当退出日日历的时候把它自己建立的frame删除
(setq calendar-remove-frame-by-deleting t)

;;设定一周的开始为周一
;(setq calendar-week-start-day 7)

;;节日和生日提醒设置
;;我不过基督徒的节日、希伯来人的节日和伊斯兰教的节日。
;;我是无神论者，不过我喜欢神话，大家有兴趣也可以探讨一下，发email给我吧
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)

;;设定一些自定义的生日和节日
;;隐私需要，删掉朋友的生日
;;后面那些农历节日需要每年根据日历修改
;;有些可惜，没有中国传统农历，谁能写个扩展elisp包弄一下
(setq general-holidays '((holiday-fixed 1 1 "元旦")
  (holiday-fixed 3 8 "妇女节")
  (holiday-fixed 4 1 "愚人节")
  (holiday-fixed 4 11 "谁的生日")
  (holiday-fixed 5 1 "劳动节")
  (holiday-fixed 10 1 "国庆节")
  (holiday-fixed 12 25 "圣诞节")
  (holiday-fixed 2 5 "元宵节")
  (holiday-fixed 4 4 "清明节")
  (holiday-fixed 4 21 "鬼节")
  (holiday-fixed 6 22 "端午节")
  (holiday-fixed 9 28 "中秋节")
  (holiday-float 5 0 2 "母亲节")
  (holiday-float 6 0 3 "父亲节")
  ))
  
;;其他的一些设置

;;日历不和日记相连，我不用Calendar自带的diary记日记
(setq mark-diary-entries-in-calendar nil)

;;在日历中突出标记节日和生日
(setq mark-holidays-in-calendar t)

;;打开calendar自动打开节日和生日列表
(setq view-calendar-holidays-initially t)

;;下面两个是设置年份为中国年，好像默认的是用英文写的，由王垠修改的。
;;这个设置在节日列表的春节那天能看到，如今年的春节他就写着
;;Thursday, January 22, 2004: Chinese New Year (甲-申)
(setq chinese-calendar-celestial-stem
  ["甲" "乙" "丙" "丁" "戊" "己" "庚" "辛" "壬" "癸"])
(setq chinese-calendar-terrestrial-branch
  ["子" "丑" "寅" "卯" "辰" "巳" "戊" "未" "申" "酉" "戌" "亥"])

  
;;Calendar模式支持各种方式来更改当前日期
;;（这里的“前”是指还没有到来的那一天，“后”是指已经过去的日子）
;; q 退出calendar模式
;; C-f 让当前日期向前一天
;; C-b 让当前日期向后一天
;; C-n 让当前日期向前一周
;; C-p 让当前日期向后一周
;; M-} 让当前日期向前一个月
;; M-{ 让当前日期向后一个月
;; C-x ] 让当前日期向前一年
;; C-x [ 让当前日期向后一年
;; C-a 移动到当前周的第一天
;; C-e 移动到当前周的最后一天
;; M-a 移动到当前月的第一天
;; M-e 多动到当前月的最后一天
;; M-< 移动到当前年的第一天
;; M-> 移动到当前年的最后一天

;;Calendar模式支持移动多种移动到特珠日期的方式
;; g d 移动到一个特别的日期
;; o 使某个特殊的月分作为中间的月分
;; . 移动到当天的日期
;; p d 显示某一天在一年中的位置，也显示本年度还有多少天。
;; C-c C-l 刷新Calendar窗口

;; Calendar支持生成LATEX代码。
;; t m 按月生成日历
;; t M 按月生成一个美化的日历
;; t d 按当天日期生成一个当天日历
;; t w 1 在一页上生成这个周的日历
;; t w 2 在两页上生成这个周的日历
;; t w 3 生成一个ISO-SYTLE风格的当前周日历
;; t w 4 生成一个从周一开始的当前周日历
;; t y 生成当前年的日历

;;EMACS Calendar支持配置节日：
;; h 显示当前的节日
;; x 定义当天为某个节日
;; u 取消当天已被定义的节日
;; e 显示所有这前后共三个月的节日。
;; M-x holiday 在另外的窗口的显示这前后三个月的节日。


;; 另外，还有一些特殊的，有意思的命令：
;; S 显示当天的日出日落时间(是大写的S)
;; p C 显示农历可以使用
;; g C 使用农历移动日期可以使用


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 日历设置结束 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 设置日记 ;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;
;;显示日记条目
;(diary)

;; 默认的日记文件
(setq diary-file "~/file/jerry.diary")
(setq diary-mail-addr "wobutianl@gmail.com")
(add-hook 'diary-hook 'appt-make-list)

;;当你创建了一个'~/diary'文件，你就可以使用calendar去查看里面的内容。你可以查看当天的事件，相关命令如下 ：
;; d 显示被选中的日期的所有事件
;; s 显示所有事件，包括过期的，未到期的等等

;; 创建一个事件的样例：
;; 02/11/1989
;; Bill B. visits Princeton today
;; 2pm Cognitive Studies Committee meeting
;; 2:30-5:30 Liz at Lawrenceville
;; 4:00pm Dentist appt
;; 7:30pm Dinner at George's
;; 8:00-10:00pm concert

;; 创建事件的命令：
;; i d 为当天日期添加一个事件
;; i w 为当天周创建一个周事件
;; i m 为当前月创建一个月事件
;; i y 为当前年创建一个年事件
;; i a 为当前日期创建一个周年纪念日
;; i c 创建一个循环的事件


(provide 'jerry-calendar)

;;; jerry-calendar.el ends here
