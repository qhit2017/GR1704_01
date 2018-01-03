SELECT * FROM goods
SELECT * FROM dept
SELECT * from indetail
SELECT * FROM outdetail

--1.查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname, MAX(g.price)
from goods g
GROUP BY g.gname


--2.查询每个商品的当前库存是多少，总金额是多少

SELECT i.inamt as'库存数量',g.gid*i.inamt as'总金额'
from goods g INNER JOIN indetail i
ON g.gid=i.gid

--3.查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 * 
from indetail i INNER JOIN goods g
on i.gid=g.gid
WHERE i.month='2017年5月'
ORDER BY i.inamt DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.deptno,SUM(o.outamt*g.price)as'总金额',g.gname
from  outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
INNER JOIN goods g
on o.gid=g.gid
INNER JOIN indetail i
on g.gid=i.gid
AND o.month='2017年6月'
GROUP BY d.deptno,g.gname
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 MAX(o.outamt),g.gname
from outdetail o INNER JOIN goods g
ON o.gid=g.gid
AND o.month='2017年6月'
GROUP BY g.gname
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt=inamt+10
WHERE inid=(select i.inid
from indetail i INNER JOIN goods g
ON i.gid=g.gid
WHERE g.spec='500g' AND i.month='2017年5月')

--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail
WHERE outid in(SELECT o.outid
from outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
WHERE d.dname='设备部'AND month='2017年5月')

--8.	查询每个部门领用的商品总金额是多少
SELECT d.deptno,SUM(o.outamt*g.price)as'总金额',g.gname,o.month
from  outdetail o INNER JOIN dept d
ON o.deptno=d.deptno
INNER JOIN goods g
on o.gid=g.gid
INNER JOIN indetail i
on g.gid=i.gid
GROUP BY d.deptno,g.gname,o.month
--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o
on g.gid=o.gid
INNER JOIN dept d
ON o.deptno=d.deptno
AND d.dname='财务部'
GROUP BY g.gid,g.gname,g.spec
ORDER BY SUM(o.outamt)DESC 
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 


