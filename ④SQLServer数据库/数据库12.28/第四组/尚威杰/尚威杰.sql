--1.	查询单价最高的商品名称、商品价格
SELECT top 1 a.gname,a.price 
from goods a
ORDER BY a.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT a.gname,COUNT(*),SUM(a.price)  
from goods a INNER JOIN indetail b
ON a.gid=b.gid
GROUP BY a.gname,a.price
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 b.gname,a.inamt
from indetail a INNER JOIN goods b
on a.gid = b.gid 
WHERE a.month='2017年5月'
ORDER BY a.inamt DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT b.deptno ,SUM(b.outid)*a.price  
from goods a INNER JOIN outdetail b
ON a.gid =b.gid
AND b.month='2017年6月'
GROUP BY b.deptno ,a.price 
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 a.gname ,b.outid 
from goods a INNER JOIN outdetail b
ON a.gid =b.gid 
AND b.month ='2017年6月'
ORDER BY b.outid DESC 
--6.	更新表，将500g的瓜子，5月份入库数量均加10
--7.	将设备部2017年5月份 的出库记录给删除
--8.	查询每个部门领用的商品总金额是多少
--9.	查询财务部领用的哪个商品最多
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
