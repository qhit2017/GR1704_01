--1.��ѯ��������"ԭ��"�ؼ��ʵ�ͼ�飬�����š����������ߡ�
select a.bno,a.bname,a.author
from tsb a
where a.bname like'%ԭ��%'
--2.��ѯ���ƽ���۸�  
select AVG(b.price)as'ƽ���۸�'
from tsb b
--3.������������Ȿ��Ŀ��������Ϊ20�����۸�Ϊ13.1
update tsb set quantity = 20
update tsb set price=13.1
where bname='���������'
--4.��ѯ������Ŀ��һ���ж��� 
select sum(quantity)as'������'
from tsb d
--6.��ѯ�߽�ֱ������Щ��
select h.bname,g.name
from jsb f inner join jsk g on f.cno=g.cno
inner join tsb h
on f.bno=h.bno
and g.name='�߽�'
--7.��ѯ�������޵��飬������Щ���߽��ģ�������������ߡ�����
select k.bname,k.author,j.name
from jsb i inner join jsk j on i.cno=j.cno
inner join tsb k
on i.bno=k.bno
and k.author like'��%'
