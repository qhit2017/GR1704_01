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
--1.	��ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.Sname
from student a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.Sno,b.Sname,b.Sdept
from student b
--3.	��ȫ��ѧ���������������䡣
SELECT c.Sname,c.sage
from student c
--4.	��ѯ���������ѧ��רҵȫ��ѧ��������
SELECT *
FROM student WHERE Sname='�������ѧ'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT *
FROM student WHERE Sage<20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.Sname,f.Sage,f.Grade
FROM student f
WHERE f.Sage<18
ORDER BY f.Grade
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT g.Sno
FROM student g
ORDER BY g.Grade ASC
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT h.Sname,h.Sage,h.Sdept
FROM student h
WHERE 18<h.Sage AND h.Sage<22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT i.Sname,i.Sage,i.Sdept
FROM student i
WHERE 20<i.Sage AND i.Sage>23
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT j.Sdept,j.Sname,j.Ssex
FROM student j
WHERE j.Sdept='IS' AND j.Sdept='MA' AND j.Sdept='CS'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT k.Sdept,k.Sname,k.Ssex
FROM student k
WHERE k.Sdept!='IS' AND k.Sdept!='MA' AND k.Sdept!='CS'
--12.	��ѯѧ��Ϊ9102040203��ѧ������ϸ�����
SELECT *
from student l
WHERE l.Sno=9102040203
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT m.Sname,m.Sdept,m.ssex
FROM student m
WHERE m.Sname='��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT n.Sname
FROM student n
WHERE n.Sname='��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT o.Sname,o.Sdept
FROM student o
WHERE o.Sname='_��%'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT p.Sname
FROM student p
WHERE p.Sname!='��%'

