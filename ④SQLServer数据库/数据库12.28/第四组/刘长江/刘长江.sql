--1.��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
select top 1 MAX(g.price),g.gname
from goods g
group by g.gname

--2.��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
select  g.gname,sum(i.inamt-o.outamt)as'���',g.price*sum(i.inamt-o.outamt)as'�ܽ��'
from goods g inner join indetail i on g.gid=i.gid
inner join outdetail o on g.gid=o.gid
group by g.gname,g.price
--3.��ѯ2017��5�·ݣ��ĸ���Ʒ����������
select top 1 *
from indetail i inner join goods g on i.gid=g.gid
where i.month='2017��5��'
order by i.inamt desc,
--4.��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
select  d.dname ,sum(o.outamt*g.price)as'�ܽ��',g.gname
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
and o.month='2017��6��'
group by d.dname,g.gname
--5.��ѯ2017��6�·ݣ��ĸ���Ʒ������������
select top 1 g.gname,o.outamt
from goods g inner join outdetail o on g.gid=o.gid
and o.month='2017��6��'
order by o.outamt desc
--6.���±���500g�Ĺ��ӣ�5�·������������10
update  indetail  set inamt=inamt+10
where inid=(select i.inid
from indetail i inner join goods g on i.gid=g.gid
where g.spec='500g'and i.month='2017��5��')

--7.���豸��2017��5�·� �ĳ����¼��ɾ��
delete from outdetail 
where outid in (select o.outid
from outdetail o inner join dept d on o.deptno=d.deptno
where d.dname='�豸��'And o.month='2017��5��') 

--8.��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
select  d.dname ,sum(o.outamt*g.price)as'�ܽ��',g.gname,o.month
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
group by d.dname,g.gname,o.month
order by o.month 
--9.��ѯ�������õ��ĸ���Ʒ���
select top 1 sum(o.outamt),g.gname,g.gid,g.spec
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
where d.dname='����'
group by g.gname,g.gid,g.spec
order by sum(o.outamt) desc


--10.��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��

--11.��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 