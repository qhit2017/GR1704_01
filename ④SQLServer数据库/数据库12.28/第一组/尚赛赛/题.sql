--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 b.gname,b.price
from goods b
ORDER BY b.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT SUM(s.price) 
FROM goods s INNER JOIN indetail i ON s.gid =i.gid
INNER JOIN outdetail j ON j.gid = i.gid
GROUP BY s.gname

SELECT a.inamt- (SELECT b.outamt
FROM outdetail b)
FROM indetail a

SELECT b.outamt
FROM outdetail b

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT MAX(s.gname) AS '商品名称'
FROM indetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month='2017年5月'

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT SUM(a.price)
FROM outdetail s INNER JOIN goods a ON s.gid = a.gid
WHERE s.month='2017年6月'
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT  Min(a.gname) 
FROM outdetail s INNER JOIN goods a ON s.gid=a.gid
WHERE s.month ='2017年6月'


