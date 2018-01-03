SELECT * FROM goods
SELECT * FROM indetail
SELECT * FROM outdetail
SELECT * FROM dept

--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 a.gname,a.price
from goods a
ORDER BY a.price DESC

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT a.gname , COUNT(*) ,SUM(a.price)
from goods a INNER JOIN indetail b on a.gid = b.gid
GROUP BY a.gname ,a.price

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1*
from indetail b
WHERE b.month ='2017年5月'
ORDER BY b.inamt DESC 

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT COUNT(g.price)
from dept d INNER JOIN indetail i ON d.deptno=i.gid
INNER JOIN goods g ON d.deptno = g.gid
AND i.month ='2017年6月'


--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 *
from outdetail a
where a.month='2017年6月'
ORDER BY a.outamt DESC


