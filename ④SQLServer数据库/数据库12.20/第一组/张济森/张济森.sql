SELECT * FROM Student

--1.	��ѯȫ��ѧ����ѧ����������
SELECT a.num,a.name
from Student a


--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
select b.name,b.num,b.dept
FROM Student b

--3.	��ȫ��ѧ���������������䡣
select c.name,c.age
from Student c

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select *
from Student d
WHERE d.dept='�������ѧϵ'

--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT *
FROM Student e
WHERE e.age <=20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.name,f.age, f.cj
FROM Student f
WHERE f.age <=18 ORDER BY f.cj asc
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select g.num,g.cj
from Student g
where g.cj <=60 ORDER BY g.cj desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select h.name,h.dept,h.age
from Student h
where h.age >=18 AND h.age<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select i.name,i.dept,i.age
from Student i
where i.age!=20 AND i.age!=21 AND i.age!=22 AND i.age!=23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select j.name,j.sex,j.dept
from Student j
WHERE j.dept='��Ϣϵ' or j.dept='��ѧϵ' OR j.dept='�������ѧϵ' 

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select k.name,k.sex,k.dept
from Student k
where k.dept!='��Ϣϵ' AND k.dept!='��ѧϵ' and k.dept!='�������ѧϵ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select *
FROM Student l
where l.sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select m.name,m.num,m.sex
from xueshengbiao ml
where m.name LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
select n.name
from Student n
where n.name LIKE '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select o.name,o.num
from Student o
where o.name LIKE '_��_'

--16.	��ѯ���в��ա��¡���ѧ��������
SELECT p.name
from Student p
where p.name!='��%'
