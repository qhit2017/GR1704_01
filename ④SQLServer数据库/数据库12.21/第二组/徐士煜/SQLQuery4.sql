SELECT * FROM student
DELETE student
INSERT INTO student VALUES(09102040203,'����','��',16,'IT','98')
INSERT INTO student VALUES(09102040204,'����','��',17,'IC','97')
INSERT INTO student VALUES(09102040205,'����','��',18,'IQ','96')
INSERT INTO student VALUES(09102040206,'��','��',19,'IE','95')
INSERT INTO student VALUES(09102040207,'��','��',20,'IW','94')
INSERT INTO student VALUES(09102040208,'��','��',21,'IA','93')
INSERT INTO student VALUES(09102040209,'��','��',22,'IC','92')
INSERT INTO student VALUES(09102040201,'��','��',23,'IV','91')
--1.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.Sdept,AVG(a.Grade)
from student a
GROUP BY a.Sdept,a.Grade,
--2.	��ѯѧ����������
SELECT COUNT(b.Sname)
from student b
--3.	��ѯ������Ů����������
SELECT c.Ssex, COUNT(c.Ssex)
from student c
GROUP BY c.Ssex
--4.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT d.Sdept,AVG(d.Grade)
from student d
ORDER BY d.Sdept,d.Grade
--5.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT e.Sdept,MAX(e.Grade),e.Sname
from student e
GROUP BY e.Sdept,e.Grade,e.Sname
--6.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT f.Sdept,MIN(f.Grade),f.Sname
from student f
GROUP BY f.Sdept,f.Grade,f.Sname

