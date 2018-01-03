--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.price,g.gname
from goods g 
ORDER BY g.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gid , SUM(g.price),SUM(i.inamt) ,SUM(g.price)*SUM(i.inamt) as '总金额'
from goods g INNER JOIN indetail i ON g.gid = i.gid
GROUP BY g.gid
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1i.month,g.gname
from indetail i INNER JOIN goods g ON g.gid = i.gid
WHERE i.month = '2017年5月'
ORDER BY i.inamt DESC
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT  SUM(o.outamt)*SUM(g.price) AS '总金额',d.dname,g.gname
from outdetail o INNER JOIN goods g ON o.gid =g.gid
INNER JOIN dept d ON d.deptno = o.deptno
AND o.mouth = '2017年6月'
GROUP BY g.gname,d.dname
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 o.outamt ,g.gname
from outdetail o  INNER JOIN goods g ON g.gid = o.gid
AND o.mouth ='2017年6月'
ORDER BY o.outamt DESC 

--6.	更新表，将500g的瓜子，5月份入库数量均加10


--7.	将设备部2017年5月份 的出库记录给删除
DELETE 

--8.	查询每个部门领用的商品总金额是多少
--9.	查询财务部领用的哪个商品最多
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
