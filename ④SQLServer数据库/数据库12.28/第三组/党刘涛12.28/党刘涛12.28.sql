--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 q.gname,q.price
from goods q
 ORDER BY q.price DESC 
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT i.imamt,i.imamt*g.price
from goods g INNER JOIN indetail i ON g.gid=i.gid
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname as '商品名称',i.imamt as '库存数量'
from goods g INNER JOIN indetail i ON g.gid=i.gid
 AND i.month='2017年5月'
 ORDER BY i.imamt DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 g.gname
from goods g INNER JOIN indetail i ON i.gid=g.gid
 AND i.month='2017年6月'
 ORDER BY i.imamt DESC
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET imamt=imamt+10 
WHERE month='2017年5月'AND gid=(SELECT gid FROM goods WHERE spec='500g'AND gname='瓜子')
--7.	将设备部2017年5月份 的出库记录给删除

DELETE FROM outdetail WHERE outamt=(SELECT o.outamt
from outdetail o INNER JOIN dept d ON d.deptno= o.deptno
AND d.dname='设备部'AND o.month='2017年5月')
SELECT *FROM dept
SELECT* FROM outdetail
--8.	查询每个部门领用的商品总金额是多少

--9.	查询财务部领用的哪个商品最多
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
SELECT
from goods g
WHERE g.price<10
