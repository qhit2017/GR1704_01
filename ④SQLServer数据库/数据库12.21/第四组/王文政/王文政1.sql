INSERT INTO  Studentinfo values(1527,'��˹��','Ů',16,'�������ѧϵ',90);
INSERT INTO  Studentinfo values(1528,'����','Ů',21,'��ѧϵ',96);
INSERT INTO  Studentinfo values(1529,'��Ϥ','��',24,'��Ϣϵ',93);
INSERT INTO  Studentinfo values(15210,'������','��',32,'����',52);
INSERT INTO  Studentinfo values(15211,'������','��',106,'��������Ȼ',100);
INSERT INTO  Studentinfo values(15212,'�Ž�','��',42,'��Ȼϵ',90);
INSERT INTO  Studentinfo values(15213,'������','Ů',16,'����ϵ',30);
INSERT INTO  Studentinfo values(15214,'���','Ů',26,'�������ѧϵ',90);
INSERT INTO  Studentinfo values(15215,'��˹��','��',16,'��Ϣϵ');
INSERT INTO  Studentinfo values(15216,'������','Ů',30,'ҽѧϵ');
INSERT INTO  Studentinfo values(09102040203,'������','Ů',16,'����ϵ');

SELECT * FROM Studentinfo


--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.Sno,a.Sname
from Studentinfo a
where a.Grade IS null

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���

SELECT b.Sdept, AVG(b.Grade)
from Studentinfo b
group BY b.Sdept

--3.	�������гɼ���ѧ����ѧ�ź�������

SELECT c.Sno,c.Sname
from Studentinfo c
where c.Grade is NOT null

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�

SELECT*
from Studentinfo d
ORDER BY d.Sdept ,d.Sage DESC


--5.	��ѯѧ����������
SELECT COUNT(e.Sname) as'ѧ��������'
from Studentinfo e

--6.	��ѯ������Ů����������
SELECT f.Ssex,COUNT(f.Ssex) as'����'
from Studentinfo f
group BY f.Ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT g.Sdept,AVG(g.Grade)
from Studentinfo g
GROUP BY g.Sdept
ORDER BY AVG(g.Grade) DESC

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
 SELECT h.Sdept, MAX(h.Grade) as'��߷�'
 from Studentinfo h
 group BY h.Sdept
 
 --9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
 
SELECT i.Sdept, MIN(i.Grade) as'��ͷ�'
from Studentinfo i
GROUP BY i.Sdept

--10.	��ѯƽ���ɼ�����רҵ�����֡�

SELECT  j.Sdept,AVG(j.Grade)
from Studentinfo j
group BY j.Sdept
ORDER BY AVG(j.Grade) 

--11.	��ѯ������Ů����ƽ���ɼ���
SELECT k.Ssex,AVG(k.Grade) as'ƽ����'
from Studentinfo k
group BY k.Ssex
ORDER BY AVG(k.Grade)


--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���



--

