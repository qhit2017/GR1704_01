select * from studenta
insert into studenta(sid ,sname ,ssex ,sdept ) values (11,'��ʮһ','��','����')
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
select a.sid ,a.sname 
from studenta a 
where a.grade is null
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
select b.sdept, avg(b.grade   )as 'ƽ����'
from studenta b
group by b.sdept
--3.	�������гɼ���ѧ����ѧ�ź�������
select  c.sid ,c.sname 
from studenta c
where c.grade  is not null
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
select *
from studenta d

order by d.sdept asc ,d.sage desc

--5.	��ѯѧ����������
select  max (e.sid   )
from studenta e

--6.	��ѯ������Ů����������
select f.ssex , COUNT (f.sname ) as'����'
from studenta f
group by f.ssex 


--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
select g.sdept ,avg (g.grade )as'ƽ���ɼ�'
from studenta g
group by g.sdept 
order by avg(g.grade )desc

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
select h.sdept as'רҵ',MAX(h.grade )as'��óɼ�'
from studenta h
group by h.sdept 
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
select i.sdept as'רҵ',min(i.grade)as'���ɼ�'
from studenta i
group by i.sdept 
--10.	��ѯƽ���ɼ�����רҵ�����֡�
select  top 1 min (j.sdept) as'���רҵ'
from studenta j
order by AVG(j.grade )asc
--11.	��ѯ������Ů����ƽ���ɼ���
select k.ssex ,AVG(k.grade )as'ƽ���ɼ�'
from studenta k
group by k.ssex 
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
select l.sname ,l.grade ,AVG (l.grade )
from studenta l
where l.grade >AVG(l.grade )
--13.	��ѯרҵѧ����������50�˵�רҵ����
--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����

