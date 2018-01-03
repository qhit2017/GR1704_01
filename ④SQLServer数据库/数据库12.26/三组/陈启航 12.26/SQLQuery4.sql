SELECT  *FROM 借书卡表

SELECT *FROM 图书表

SELECT *FROM 借书记录表


--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT a.bno,a.bname,a.author
from 图书表 a
WHERE a.bname LIKE '%原理%'
--2.	查询书的平均价格  
SELECT AVg (b.price)
from 图书表 b
--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE 图书表 SET quantity='20' ,price='13.1'WHERE bname='计算机基础'
--4.	查询所有书的库存一共有多少 
SELECT SUM(t.quantity) 
from 图书表 t
--5.	查询哪本书被借的次数最多，输出书名和次数
SELECT MAX(p.bname) ,COUNT(*) 
from  图书表 p INNER JOIN 借书记录表 e
ON p.bno=e.bno
