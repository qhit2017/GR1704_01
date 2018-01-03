SELECT * FROM [图书表·];
SELECT * FROM 借书卡表;
SELECT * FROM 借书记录表;
--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT t.bno, t.bname, t.author 
from [图书表·] t
WHERE t.bname='西游记'

--2.	查询书的平均价格
SELECT AVG( q.Price)AS'价格' 
from [图书表·] q

--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE [图书表·] SET quantity='20', price='13.1'WHERE bname ='计算机基础'   

--4.	查询所有书的库存一共有多少
SELECT SUM (w.quantity )AS'库存数量'
from [图书表·] w 

--6.	查询陈启航分别借了哪些书
SELECT r.bname 
from [图书表·]r INNER JOIN 借书记录表 y 
ON  r.bno=y.bno
AND r.bname ='张飞'


