
INSERT INTO zuoye VALUES('1','��С','��',20,'�������ѧϵ',79)

INSERT INTO zuoye VALUES('2','��С','Ů',19,'����ά��ѧϵ',90)

INSERT INTO zuoye VALUES('3','��С','Ů',18,'���Ľ���ѧϵ',85)

INSERT INTO zuoye VALUES('4','��С','��',18,'��Ϣϵ',65)

INSERT INTO zuoye VALUES('5','��С','��',19,'��ѧϵ',75)

INSERT INTO zuoye VALUES('6','��С','��',16,'��Ϣϵ',70)

INSERT INTO zuoye VALUES('7','��С','Ů',17,'��ѧϵ',55)

INSERT INTO zuoye VALUES('8','������','��',20,'�������ѧϵ',87)

INSERT INTO zuoye VALUES('9','лС','��',21,'��ѧϵ',35)

INSERT INTO zuoye VALUES('10','ԬС','Ů',20,'�������ѧϵ',25)

INSERT INTO zuoye VALUES('11','��С��','��',16,'��������ѧϵ',98)

SELECT *FROM zuoye

--1.	��ѯȫ��ѧ����ѧ��������.

SELECT a.Son,a.Sname
from zuoye a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ.

SELECT b.Sname,b.Son,b.Sdept
from zuoye b

--3.	��ȫ��ѧ���������������䡣

SELECT c.Sname,c.sage
from zuoye c

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������

SELECT *
from zuoye d
WHERE d.Sdept='�������ѧϵ'

--5.	��ѯ����������20�����µ�ѧ�������������䡣

SELECT *
FROM zuoye e
where e.Sage<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����

SELECT f.sname,f.sage ,f.Grade
from zuoye f
WHERE f.sage<18
ORDER BY f.Grade DESC 

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�

SELECT g.Son
from zuoye g
WHERE g.Son<60
ORDER BY g.Son DESC

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣

SELECT h.Sname,h.Sdept,h.Sage
from zuoye h
WHERE h.Sage>=18 AND h.Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣

SELECT i.Sname,i.Sdept,i.Sage
from zuoye i
WHERE i.Sage<20

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

SELECT q.sname,q.ssex
FROM zuoye q
where q.sdept='��Ϣϵ' OR q.sdept ='��ѧϵ' OR q.sdept='�������ѧϵ'


--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�

SELECT w.Sname,w.Ssex
from zuoye w
where NOT (w.Sdept='��Ϣϵ'OR w.Sdept='��ѧϵ' OR w.Sdept='�������ѧϵ')

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����

SELECT p.Son
from zuoye p
WHERE 

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

SELECT t.sname,t.Son,t.ssex
from zuoye t
WHERE t.sname LIKE '��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������

SELECT n.sname
from zuoye n
WHERE n.sname LIKE '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�

SELECT o.sname,o.Son 
from zuoye o
WHERE o.sname LIKE '_��%'

--16.	��ѯ���в��ա��¡���ѧ��������

SELECT u.sname
from zuoye u
WHERE u.sname NOT  LIKE '��%'

