--1.	��ѯȫ��ѧ����ѧ��������
 SELECT * FROM Student

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ
 SELECT a.Sname,a.Sno,a.Sdept
 from Student a
 
--3.	��ȫ��ѧ����������������
 select b.Sname,b.Sage
 from Student b

--4.	��ѯ���������ѧ��רҵȫ��ѧ��������
select *
FROM Student c
where c.Sdept='�������ѧ'

--5.	��ѯ����������20�����µ�ѧ��������������
select d.Sname,d.Sage
from Student d
WHERE d.Sage<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
select e.Sname,e.Sage,e.Grade
from Student e
WHERE e.Sage<18
ORDER BY e.Grade

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������
select f.Sno
from Student f
where f.Grade<60
ORDER BY f.Grade

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������
select g.Sname,g.Sdept,g.Sage
from Student g
where g.Sage>=18 AND g.Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ������
select h.Sname,h.Sdept,h.Sage 
from Student h
WHERE h.Sage<=20 OR h.Sage>=23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select i.Sname,i.Ssex
from Student i
WHERE i.Sdept='��Ϣϵ' OR i.Sdept='��ѧϵ' or i.Sdept='�������ѧϵ'

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select j.Sname,j.Ssex
from Student j
where j.Sdept!='��Ϣϵ' and j.Sdept!='��ѧϵ' and j.Sdept!='�������ѧ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT *
from Student k
WHERE k.Sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select l.Sname,l.Sno,l.Ssex
from Student l
where l.Sname LIKE '��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT m.Sname
from Student m
where m.Sname LIKE '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT n.Sname,n.Sno
from Student n
where n.Sname LIKE '_��_'

--16.	��ѯ���в��ա��¡���ѧ������
select o.Sname
from Student o
where   o.Sname not like  '��%' 
