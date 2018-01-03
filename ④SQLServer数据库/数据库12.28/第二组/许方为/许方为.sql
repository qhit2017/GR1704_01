SELECT *from 商品表 
SELECT * FROM 部门表
SELECT *FROM 入库表
SELECT *FROM 出库表

--1.	查询单价最高的商品名称、商品价格
SELECT  TOP 1 q.gname,q.price
from 商品表 q
ORDER BY q.gname,q.price DESC

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT  S.gname,S.SPEC,SUM(s.price)
from 商品表 s INNER JOIN 入库表 r ON s.gid=r.gid 
 INNER JOIN 出库表 f ON s.gid=f.gid
 GROUP BY s.gname,s.spec
 
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT MAX(W.gname) 
from 商品表 w INNER JOIN 入库表 r ON w.gid=r.gid
WHERE r.month='2017年5月' 

--4-.	查询2017年6月份，每个部门领用的商品总金额是多少


--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT  TOP 1 s.gname 
from 商品表 s INNER JOIN 出库表 h ON s.gid=h.gid
WHERE h.month='2017年6月'
ORDER BY h.outamt DESC


 