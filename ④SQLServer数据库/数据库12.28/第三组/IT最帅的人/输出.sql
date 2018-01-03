SELECT *from outdetail --as ' 出库表'
SELECT *from dept --as '部门表'
SELECT *from goods --as '商品表 '
SELECT *from indetail-- as '入库表'


--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 a.gname, a.price 
from goods a
ORDER BY  a.price,a.gname
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT i.inamt-o.outamt as'当前库存' ,SUM((i.inamt-o.outamt)*g.price)
from goods g INNER JOIN indetail i ON g.gid=i.gid
  INNER JOIN outdetail o on g.gid =o.gid
  GROUP BY g.gid ,i.inamt-o.outamt
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT  MAX(i.inamt) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  AND i.month='2017年5月'
SELECT g.gname 
from indetail  i  INNER JOIN  goods g ON g.gid =i.gid
WHERE i.inamt in (SELECT  MAX(i.inamt) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  AND i.month='2017年5月')
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT  SUM(I.inamt *G.price) 
from goods g INNER JOIN indetail  i ON g.gid =i.gid
  INNER JOIN outdetail o ON g.gid=o.gid
  INNER JOIN dept d ON o.deptno=d.deptno 
  and i.month ='2017年6月'
 GROUP BY  I.inamt *G.price
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT  MAX(o.outamt ) 
FROM goods g INNER JOIN outdetail o ON g.gid =o.gid 
    AND o.month='2017年6月'
    
    SELECT g.gname,o.outamt   
    from outdetail o INNER JOIN goods g ON g.gid =o.gid 
    where o.outamt IN (SELECT  MAX(o.outamt ) 
FROM goods g INNER JOIN outdetail o ON g.gid =o.gid 
    AND o.month='2017年6月')
--6.	更新表，将500g的瓜子，5月份入库数量均加10
SELECT *
from goods g INNER JOIN indetail i on g.gid =i.gid 
and g.gname ='瓜子'
AND I.month ='2017年5月'
and g.spec ='500'

--7.	将设备部2017年5月份 的出库记录给删除
--8.	查询每个部门领用的商品总金额是多少
--9.	查询财务部领用的哪个商品最多
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
