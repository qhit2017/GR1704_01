select *
from goods 


--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
select top 1 g.gname ,g.price     
from goods g
 order by g.price desc
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
select g.gname , i.inamt as '���' ,i.inamt *g.price as'�ܽ��' 
from goods g inner join indetail i on g.gid = i.gid 


--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
select	top 1 g.gname  
from goods g inner join indetail i on g.gid =i.gid  
and i.month ='2017��5��'
order by i.inamt desc
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
 
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
 select top 1 g.gname 
from outdetail o inner join goods g on o.gid = g.gid 
where o.month ='2017��6��'
order by o.outamt desc
--6.	���±���500g�Ĺ��ӣ�5�·������������10
update indetail  set inamt = inamt +10
where gid  in(select inamt     from goods g inner join indetail i on g.gid = i.gid 
and g.spec ='500��'and i.month ='2017��5��') 

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
--9.	��ѯ�������õ��ĸ���Ʒ���
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
select SUM (g.price ) as'�ܽ��'
from goods g inner join indetail i on g.gid = i.gid 
where i.month =(
select top 1 i.month 
from goods g inner join indetail i on g.gid = i.gid 
group by i.month )

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣�
select COUNT (*)
from goods g inner join outdetail o  on g.gid  =o.gid 
inner join dept d on o.deptno =d.deptno 
where g.price <10
