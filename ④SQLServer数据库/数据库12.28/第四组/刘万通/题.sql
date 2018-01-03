--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 a.gname
from goods a
ORDER BY a.price DESC 



--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT s.gname, SUM(s.price) 
from   indetail a  INNER JOIN goods s ON a.gid=s.gid
GROUP BY s.gname



--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 s.gname
from indetail a INNER JOIN goods s ON a.gid=s.gid
where a.month='2017年5月'
ORDER BY a.inamt DESC 










--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT SUM(s.price)
from outdetail a INNER JOIN goods s ON a.gid=s.gid
where a.month='2017年6月'
GROUP BY a.deptno



--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 s.gname
from outdetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month='2017年6月'
ORDER BY a.outamt DESC





--6.	更新表，将500g的瓜子，5月份入库数量均加10



7.	将设备部2017年5月份 的出库记录给删除
