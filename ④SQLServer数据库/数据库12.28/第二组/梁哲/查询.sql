SELECT *FROM goods -- 商品表 
SELECT *FROM dept --部门表 
SELECT *FROM indetail --入库表 
SELECT *FROM outdetail  --出库表 


--1.	查询单价最高的商品名称、商品价格
 SELECT TOP 1 A.gname,MAX(A.price) 
 FROM goods A
 GROUP BY A.gname 
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname ,COUNT(*),SUM(g.price )  
FROM goods g INNER JOIN indetail i ON g.gid = i.gid 
GROUP BY g.gname ,g.price 
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 G.gname ,I.inamt  
FROM indetail I INNER JOIN goods G ON I.gid = G.gid   
WHERE  I.month ='2017年5月'
ORDER BY I.inamt  DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少

--5.	查询2017年6月份，哪个商品出库的数量最多

--6.	更新表，将500g的瓜子，5月份入库数量均加10

--7.	将设备部2017年5月份 的出库记录给删除

--8.	查询每个部门领用的商品总金额是多少

--9.	查询财务部领用的哪个商品最多

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多

--12.	查询哪个月份商品入库的总金额最多，总金额是多少？

--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 

