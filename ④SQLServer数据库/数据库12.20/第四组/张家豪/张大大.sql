INSERT INTO  Student values(1527,'����','��',16,'�������ѧϵ',70);
INSERT INTO  Student values(1528,'����','��',22,'��ѧϵ',70);
INSERT INTO  Student values(1529,'��С��','��',24,'��Ϣϵ',93);
INSERT INTO  Student values(15210,'���','��',32,'����',52);
INSERT INTO  Student values(15211,'������','��',106,'��������Ȼ',100);
INSERT INTO  Student values(15212,'������','��',42,'��Ȼϵ',90);
INSERT INTO  Student values(15213,'����С','��',16,'����ϵ',100);
INSERT INTO  Student values(15214,'����','Ů',26,'�������ѧϵ',90);
INSERT INTO  Student values(15215,'����','Ů',16,'��Ϣϵ',100);
INSERT INTO  Student values(15216,'����','Ů',30,'ҽѧϵ',80);
INSERT INTO  Student values(09102040203,'����','Ů',16,'����ϵ',90);

SELECT * FROM Student

--1.	��ѯȫ��ѧ����ѧ����������
SELECT z.sno,z.Sname
from Student z


--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
select a.Sname,a.sno,a.Sdept
FROM Student a

--3.	��ȫ��ѧ���������������䡣
select b.Sname,b.Sage
from Student b

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select *
from Student c
WHERE c.Sdept='�������ѧϵ'

--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT *
FROM Student d
WHERE d.Sage <=20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT e.Sname,e.Sage, e.Grade
FROM Student e
WHERE e.Sage <=18 ORDER BY e.Grade asc
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select f.sno,f.Grade
from Student f
where f.Grade <=60 ORDER BY f.Grade desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select g.Sname,g.Sdept,g.Sage
from Student g
where g.Sage >=18 AND g.Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select h.Sname,h.Sdept,h.Sage
from Student h
where h.Sage!=20 AND h.Sage!=21 AND h.Sage!=22 AND h.Sage!=23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select i.Sname,i.Ssex,i.Sdept
from Student i
WHERE i.Sdept='��Ϣϵ' or i.Sdept='��ѧϵ' OR i.Sdept='�������ѧϵ' 

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select j.Sname,j.Ssex,j.Sdept
from Student j
where j.Sdept!='��Ϣϵ' AND j.Sdept!='��ѧϵ' and j.Sdept!='�������ѧϵ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select *
FROM Student k
where k.sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select l.Sname,l.sno,l.Ssex
from Student l
where l.Sname LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
select m.Sname
from Student m
where m.Sname LIKE '��%%'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select n.Sname,n.sno
from Student n
where n.Sname LIKE '%��%'

--16.	��ѯ���в��ա�������ѧ��������
SELECT o.Sname
from Student o
where o.Sname NOT LIKE '��%'

