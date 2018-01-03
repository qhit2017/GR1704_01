select *
from goods 


--1.	查询单价最高的商品名称、商品价格
select top 1 g.gname ,g.price     
from goods g
 order by g.price desc
--2.	查询每个商品的当前库存是多少，总金额是多少
select g.gname , i.inamt as '库存' ,i.inamt *g.price as'总金额' 
from goods g inner join indetail i on g.gid = i.gid 


--3.	查询2017年5月份，哪个商品入库数量最多
select	top 1 g.gname  
from goods g inner join indetail i on g.gid =i.gid  
and i.month ='2017年5月'
order by i.inamt desc
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
 
--5.	查询2017年6月份，哪个商品出库的数量最多
 select top 1 g.gname 
from outdetail o inner join goods g on o.gid = g.gid 
where o.month ='2017年6月'
order by o.outamt desc
--6.	更新表，将500g的瓜子，5月份入库数量均加10
update indetail  set inamt = inamt +10
where gid  in(select inamt     from goods g inner join indetail i on g.gid = i.gid 
and g.spec ='500克'and i.month ='2017年5月') 

--7.	将设备部2017年5月份 的出库记录给删除

--8.	查询每个部门领用的商品总金额是多少
--9.	查询财务部领用的哪个商品最多
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
select SUM (g.price ) as'总金额'
from goods g inner join indetail i on g.gid = i.gid 
where i.month =(
select top 1 i.month 
from goods g inner join indetail i on g.gid = i.gid 
group by i.month )

--13.	查询单价小于10元的商品，财务部领用的数量是多少？
select COUNT (*)
from goods g inner join outdetail o  on g.gid  =o.gid 
inner join dept d on o.deptno =d.deptno 
where g.price <10
