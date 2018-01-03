--1.查询单价最高的商品名称、商品价格
select top 1 MAX(g.price),g.gname
from goods g
group by g.gname

--2.查询每个商品的当前库存是多少，总金额是多少
select  g.gname,sum(i.inamt-o.outamt)as'库存',g.price*sum(i.inamt-o.outamt)as'总金额'
from goods g inner join indetail i on g.gid=i.gid
inner join outdetail o on g.gid=o.gid
group by g.gname,g.price
--3.查询2017年5月份，哪个商品入库数量最多
select top 1 *
from indetail i inner join goods g on i.gid=g.gid
where i.month='2017年5月'
order by i.inamt desc,
--4.查询2017年6月份，每个部门领用的商品总金额是多少
select  d.dname ,sum(o.outamt*g.price)as'总金额',g.gname
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
and o.month='2017年6月'
group by d.dname,g.gname
--5.查询2017年6月份，哪个商品出库的数量最多
select top 1 g.gname,o.outamt
from goods g inner join outdetail o on g.gid=o.gid
and o.month='2017年6月'
order by o.outamt desc
--6.更新表，将500g的瓜子，5月份入库数量均加10
update  indetail  set inamt=inamt+10
where inid=(select i.inid
from indetail i inner join goods g on i.gid=g.gid
where g.spec='500g'and i.month='2017年5月')

--7.将设备部2017年5月份 的出库记录给删除
delete from outdetail 
where outid in (select o.outid
from outdetail o inner join dept d on o.deptno=d.deptno
where d.dname='设备部'And o.month='2017年5月') 

--8.查询每个部门领用的商品总金额是多少
select  d.dname ,sum(o.outamt*g.price)as'总金额',g.gname,o.month
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
group by d.dname,g.gname,o.month
order by o.month 
--9.查询财务部领用的哪个商品最多
select top 1 sum(o.outamt),g.gname,g.gid,g.spec
from  goods g inner join outdetail o on g.gid=o.gid
inner join dept d on d.deptno=o.deptno
where d.dname='财务部'
group by g.gname,g.gid,g.spec
order by sum(o.outamt) desc


--10.查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？

--11.查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.查询哪个月份商品入库的总金额最多，总金额是多少？
--13.查询单价小于10元的商品，财务部领用的数量是多少？ 