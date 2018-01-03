--1.查询单价最高的商品名称、商品价格
SELECT TOP 1 a.gname,a.price
from goods a
ORDER BY a.price DESC 
--2.查询每个商品的当前库存是多少，总金额是多少

--3.查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 a.month,g.gname, MAX(a.inamt) 
from indetail a INNER JOIN goods g ON a.gid= g.gid
WHERE a.month='2017年5月' 
GROUP BY a.month,g.gname

--4.查询2017年6月份，每个部门领用的商品总金额是多少
SELECT TOP 1  a.gid,g.gname, MAX(a.inamt) 
from indetail a INNER JOIN goods g ON a.gid=g.gid
GROUP BY a.gid,g.gname
ORDER BY a.gid DESC 
--5.查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 a.gid,g.gname, MAX(outamt) 
from outdetail a INNER JOIN goods g ON a.gid=g.gid
GROUP BY a.gid,g.gname 
ORDER BY  MAX(outamt)DESC 
--6.更新表，将500g的瓜子，5月份入库数量均加10
--7.将设备部2017年5月份 的出库记录给删除
DELETE from outdetail WHERE month='2017年5月'

