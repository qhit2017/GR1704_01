SELECT*FROM cool
delete FROM cool


INSERT INTO cool  VALUES('1','�ŷ�','��',20,'�����',45)
INSERT INTO cool  VALUES('2','����С','Ů',34,'����ϵ',67)
INSERT INTO cool  VALUES('3','����','Ů',45,'����ϵ',78)
INSERT INTO cool  VALUES('4','��С','��',56,'����ϵ',89)
INSERT INTO cool  VALUES('5','С��','Ů',43,'ѧǰϵ',89)
INSERT INTO cool  VALUES('6','С��','��',14,'����ϵ',100)
INSERT INTO cool  VALUES('7','����','Ů',15,'�ƾ�ϵ',90)
--1.	��ѯȫ��ѧ����ѧ��������
SELECT a.Sno,a.Sname
from cool a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT b.Sname,b.Sno,b.Sdept
from cool b

--3.	��ȫ��ѧ����������������
SELECT f.Sname,f.Sage
from cool f

--4.	��ѯ���������ѧ��רҵȫ��ѧ��������

SELECT  e.Sdept
from cool e
--5.	��ѯ����������20�����µ�ѧ��������������
SELECT *
from cool c
WHERE c.Sage<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT y.Sname,y.Sage,y.Grade
from cool y
WHERE y.Sage<16
ORDER BY y.Grade
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������
SELECT p.Sno
from cool p
WHERE p.Grade<60
ORDER BY p.Grade DESC

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������
SELECT  i.Sage,i.Sname,i.Sdept,i.Sage
from cool i
WHERE i.Sage>=18AND i.Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ������
SELECT o.Sname,o.Sdept,o.Sage
from cool o
WHERE not( o.Sage>=20AND o.Sage<=23)
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT q.Sname,q.Ssex
from cool q
WHERE q.Sdept='����ϵ' OR q.Sdept='ѧǰϵ' OR q.Sdept='�ƾ�ϵ'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT  t.Sdept,t.Sname,t.Ssex
from cool t
WHERE t.Sdept !='����ϵ' AND t.Sdept!='ѧǰϵ' AND t.Sdept!='�ƾ�ϵ'
-- 12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT *
from cool m
WHERE m.Sno='09102040203'
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT*
from cool e
WHERE e.Sname LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT*
FROM cool u
WHERE u.Sname LIKE '��__%'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT*
FROM cool k
WHERE k.Sname LIKE '_��%'

--16.	��ѯ���в��ա��¡���ѧ������
SELECT*
FROM cool n
WHERE n.Sname LIKE'��%'