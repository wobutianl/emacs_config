;;; jerry-calendar.el --- ��������
;;; Code:
;;������������


;;���������ڵط��ľ�γ�ȣ�calendar���и�����������ʳ��Ԥ�⣬����ľ�γ������ϵ�ġ�
(setq calendar-latitude +39.9)
(setq calendar-longitude +116.4)

;;�ҵ����ڵأ�����
(setq calendar-location-name "Beijing")

;;���˳���������ʱ������Լ�������frameɾ��
(setq calendar-remove-frame-by-deleting t)

;;�趨һ�ܵĿ�ʼΪ��һ
;(setq calendar-week-start-day 7)

;;���պ�������������
;;�Ҳ�������ͽ�Ľ��ա�ϣ�����˵Ľ��պ���˹���̵Ľ��ա�
;;�����������ߣ�������ϲ���񻰣��������ȤҲ����̽��һ�£���email���Ұ�
(setq christian-holidays nil)
(setq hebrew-holidays nil)
(setq islamic-holidays nil)

;;�趨һЩ�Զ�������պͽ���
;;��˽��Ҫ��ɾ�����ѵ�����
;;������Щũ��������Ҫÿ����������޸�
;;��Щ��ϧ��û���й���ͳũ����˭��д����չelisp��Ūһ��
(setq general-holidays '((holiday-fixed 1 1 "Ԫ��")
  (holiday-fixed 3 8 "��Ů��")
  (holiday-fixed 4 1 "���˽�")
  (holiday-fixed 4 11 "˭������")
  (holiday-fixed 5 1 "�Ͷ���")
  (holiday-fixed 10 1 "�����")
  (holiday-fixed 12 25 "ʥ����")
  (holiday-fixed 2 5 "Ԫ����")
  (holiday-fixed 4 4 "������")
  (holiday-fixed 4 21 "���")
  (holiday-fixed 6 22 "�����")
  (holiday-fixed 9 28 "�����")
  (holiday-float 5 0 2 "ĸ�׽�")
  (holiday-float 6 0 3 "���׽�")
  ))
  
;;������һЩ����

;;���������ռ��������Ҳ���Calendar�Դ���diary���ռ�
(setq mark-diary-entries-in-calendar nil)

;;��������ͻ����ǽ��պ�����
(setq mark-holidays-in-calendar t)

;;��calendar�Զ��򿪽��պ������б�
(setq view-calendar-holidays-initially t)

;;�����������������Ϊ�й��꣬����Ĭ�ϵ�����Ӣ��д�ģ��������޸ĵġ�
;;��������ڽ����б�Ĵ��������ܿ����������Ĵ�������д��
;;Thursday, January 22, 2004: Chinese New Year (��-��)
(setq chinese-calendar-celestial-stem
  ["��" "��" "��" "��" "��" "��" "��" "��" "��" "��"])
(setq chinese-calendar-terrestrial-branch
  ["��" "��" "��" "î" "��" "��" "��" "δ" "��" "��" "��" "��"])

  
;;Calendarģʽ֧�ָ��ַ�ʽ�����ĵ�ǰ����
;;������ġ�ǰ����ָ��û�е�������һ�죬������ָ�Ѿ���ȥ�����ӣ�
;; q �˳�calendarģʽ
;; C-f �õ�ǰ������ǰһ��
;; C-b �õ�ǰ�������һ��
;; C-n �õ�ǰ������ǰһ��
;; C-p �õ�ǰ�������һ��
;; M-} �õ�ǰ������ǰһ����
;; M-{ �õ�ǰ�������һ����
;; C-x ] �õ�ǰ������ǰһ��
;; C-x [ �õ�ǰ�������һ��
;; C-a �ƶ�����ǰ�ܵĵ�һ��
;; C-e �ƶ�����ǰ�ܵ����һ��
;; M-a �ƶ�����ǰ�µĵ�һ��
;; M-e �ද����ǰ�µ����һ��
;; M-< �ƶ�����ǰ��ĵ�һ��
;; M-> �ƶ�����ǰ������һ��

;;Calendarģʽ֧���ƶ������ƶ����������ڵķ�ʽ
;; g d �ƶ���һ���ر������
;; o ʹĳ��������·���Ϊ�м���·�
;; . �ƶ������������
;; p d ��ʾĳһ����һ���е�λ�ã�Ҳ��ʾ����Ȼ��ж����졣
;; C-c C-l ˢ��Calendar����

;; Calendar֧������LATEX���롣
;; t m ������������
;; t M ��������һ������������
;; t d ��������������һ����������
;; t w 1 ��һҳ����������ܵ�����
;; t w 2 ����ҳ����������ܵ�����
;; t w 3 ����һ��ISO-SYTLE���ĵ�ǰ������
;; t w 4 ����һ������һ��ʼ�ĵ�ǰ������
;; t y ���ɵ�ǰ�������

;;EMACS Calendar֧�����ý��գ�
;; h ��ʾ��ǰ�Ľ���
;; x ���嵱��Ϊĳ������
;; u ȡ�������ѱ�����Ľ���
;; e ��ʾ������ǰ�������µĽ��ա�
;; M-x holiday ������Ĵ��ڵ���ʾ��ǰ�������µĽ��ա�


;; ���⣬����һЩ����ģ�����˼�����
;; S ��ʾ������ճ�����ʱ��(�Ǵ�д��S)
;; p C ��ʾũ������ʹ��
;; g C ʹ��ũ���ƶ����ڿ���ʹ��


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; �������ý��� ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; �����ռ� ;;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;
;;��ʾ�ռ���Ŀ
;(diary)

;; Ĭ�ϵ��ռ��ļ�
(setq diary-file "~/file/jerry.diary")
(setq diary-mail-addr "wobutianl@gmail.com")
(add-hook 'diary-hook 'appt-make-list)

;;���㴴����һ��'~/diary'�ļ�����Ϳ���ʹ��calendarȥ�鿴��������ݡ�����Բ鿴������¼�������������� ��
;; d ��ʾ��ѡ�е����ڵ������¼�
;; s ��ʾ�����¼����������ڵģ�δ���ڵĵȵ�

;; ����һ���¼���������
;; 02/11/1989
;; Bill B. visits Princeton today
;; 2pm Cognitive Studies Committee meeting
;; 2:30-5:30 Liz at Lawrenceville
;; 4:00pm Dentist appt
;; 7:30pm Dinner at George's
;; 8:00-10:00pm concert

;; �����¼������
;; i d Ϊ�����������һ���¼�
;; i w Ϊ�����ܴ���һ�����¼�
;; i m Ϊ��ǰ�´���һ�����¼�
;; i y Ϊ��ǰ�괴��һ�����¼�
;; i a Ϊ��ǰ���ڴ���һ�����������
;; i c ����һ��ѭ�����¼�


(provide 'jerry-calendar)

;;; jerry-calendar.el ends here
