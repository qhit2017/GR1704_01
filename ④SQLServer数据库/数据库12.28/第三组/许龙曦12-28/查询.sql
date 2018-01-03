--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname,g.price
from goods g
ORDER BY g.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname ,COUNT(*),SUM(g.price) 
from goods g INNER JOIN indetail i
on g.gid=i.gid
GROUP BY g.gname,g.price
SELECT *FROM indetail
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname,i.inamt
from indetail i INNER JOIN goods g
ON i.gid=g.gid
WHERE i.month='2017年5月'
ORDER BY i.inamt DESC
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT g.gname,SUM(o.outamt*g.price) AS'总金额'
from goods g INNER JOIN outdetail o
ON g.gid=o.gid
AND o.month='2017年6月'
GROUP BY g.gname
--5.	查询2017年6月份，哪个商品出库的数量最多
 SELECT TOP 1 g.gname ,o.outamt
 from goods g INNER JOIN outdetail o
ON g.gid=o.gid
AND o.month='2017年6月'
ORDER BY o.outamt DESC
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt=inamt+10 WHERE month='2017年5月' and gid=(SELECT gid FROM goods WHERE spec='500g' AND gname='瓜子')

--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE month='2017年5月' AND deptno=(SELECT deptno from dept WHERE dname='设备部')
--8.	查询每个部门查询财务部领用的哪个商品最多

 
 


