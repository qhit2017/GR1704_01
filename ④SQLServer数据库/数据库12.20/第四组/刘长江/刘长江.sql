SELECT * FROM Student

--1.	��ѯȫ��ѧ����ѧ����������
SELECT z.sno,z.Sname
from xueshengbiao z


--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
select a.Sname,a.sno,a.Sdept
FROM xueshengbiao a

--3.	��ȫ��ѧ���������������䡣
select b.Sname,b.Sage
from xueshengbiao b

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select *
from xueshengbiao c
WHERE c.Sdept='�������ѧϵ'

--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT *
FROM xueshengbiao d
WHERE d.Sage <=20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT e.Sname,e.Sage, e.cj
FROM xueshengbiao e
WHERE e.Sage <=18 ORDER BY e.cj asc
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select f.sno,f.cj
from xueshengbiao f
where f.cj <=60 ORDER BY f.cj desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select g.Sname,g.Sdept,g.Sage
from xueshengbiao g
where g.Sage >=18 AND g.Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select h.Sname,h.Sdept,h.Sage
from xueshengbiao h
where h.Sage!=20 AND h.Sage!=21 AND h.Sage!=22 AND h.Sage!=23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select i.Sname,i.Ssex,i.Sdept
from xueshengbiao i
WHERE i.Sdept='��Ϣϵ' or i.Sdept='��ѧϵ' OR i.Sdept='�������ѧϵ' 

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select j.Sname,j.Ssex,j.Sdept
from xueshengbiao j
where j.Sdept!='��Ϣϵ' AND j.Sdept!='��ѧϵ' and j.Sdept!='�������ѧϵ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select *
FROM xueshengbiao k
where k.sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select l.Sname,l.sno,l.Ssex
from xueshengbiao l
where l.Sname LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
select m.Sname
from xueshengbiao m
where m.Sname LIKE '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select n.Sname,n.sno
from xueshengbiao n
where n.Sname LIKE '_��_'

--16.	��ѯ���в��ա��¡���ѧ��������
SELECT o.Sname
from xueshengbiao o
where o.Sname!='��%'
