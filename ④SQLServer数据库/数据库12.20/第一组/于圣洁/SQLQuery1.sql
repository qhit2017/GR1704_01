select * from studenta

insert into studenta values (1,'��һ','��',15,'�����',99)
insert into studenta values (2,'����','Ů',18,'�����',45)
insert into studenta values (3,'����','Ů',21,'����',66)
insert into studenta values (4,'����','��',16,'����',48)
insert into studenta values (5,'����','Ů',19,'����',47)
insert into studenta values (6,'����','��',17,'����',68)
insert into studenta values (7,'����','��',17,'�����',76)
insert into studenta values (8,'����','��',19,'����',88)
insert into studenta values (9,'����','Ů',18,'����',76)
insert into studenta values (10,'��ʮ','��',18,'�����',100)
--1.	��ѯȫ��ѧ����ѧ����������
select a.sid ,a.sname 
from studenta a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
select b.sname ,b.sid ,b.sdept 
from studenta b
--3.	��ȫ��ѧ���������������䡣
select c.sname ,c.sage 
from studenta c
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select *
from studenta d
where d.sdept ='�����'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
select *
from studenta e
where e.sage <=20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
select f.grade ,f.sname ,f.sage
from studenta f
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select *
from studenta g
where g.grade <60  
select * from studenta g
order by g.grade desc 
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select h.sname ,h.sdept,h.sage 
from studenta h
where h.sage <=22 and h.sage >=18
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select i.sname ,i.sdept ,i.sage 
 from studenta  i
 where i.sage <20 and i.sage >23
 --10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
 select j.sname ,j.ssex 
 from studenta j
 where j.sdept ='�����'or j.sdept ='����'
 --11.	��ѯ�Ȳ�����Ϣϵ����Ϣϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
 select k.sname ,k.ssex 
 from studenta k
 where k.sdept! ='��Ϣϵ' and k.sdept ='��Ϣϵ'and  k.sdept ='�������ѧϵ'
 --12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
 select *
 from studenta l
 where l.sid =5
 --13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
 select m.sname ,m.sid ,m.ssex 
 from studenta m
 where m.sname like '��%'
 --14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
 select n.sname 
 from studenta  n
 where n.sname like '��__'
 --15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
 select p.sname ,p.sid 
 from studenta p
 where p.sname like '_��_'
 --16.	��ѯ���в��ա��¡���ѧ��������
 select q.sname 
 from studenta q
 where q.sname !='��'
 
 
 
 
 
 
 
 





