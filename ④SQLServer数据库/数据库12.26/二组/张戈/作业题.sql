SELECT * from CARD  --借书卡表
SELECT * from BOOKS  --图书表
SELECT * from BORROW  --借书记录表

--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT *
from BOOKS a
where a.bname LIKE '%原理%'

--2.	查询书的平均价格  
SELECT AVG(b.Price)
from BOOKS b

--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE BOOKS SET quantity=20,Price=13.1
WHERE bname='计算机基础' 

--4.	查询所有书的库存一共有多少 
SELECT SUM(c.quantity)
from BOOKS c

--5.	查询哪本书被借的次数最多，输出书名和次数
SELECT Max(k.bname),COUNT(*)
from BORROW b INNER JOIN BOOKS k ON k.bno=b.bno
 
 SELECT b.bno
 from BORROW b 
 where b.cno=(SELECT Max(b.cno)
from BORROW b INNER JOIN BOOKS k ON k.bno=b.bno)
 
 SELECT TOP 1 b.bname
 from BOOKS b ,CARD c,BORROW k
 WHERE b.bno=( SELECT b.bno
 from BORROW b 
 WHERE b.cno=(SELECT Max(b.cno)
from CARD c INNER JOIN BORROW b ON c.Cno=b.cno
 INNER JOIN BOOKS k ON k.bno=b.bno))
 
 


--6.	查询陈启航分别借了哪些书
--7.	查询作者姓张的书，都被哪些读者借阅，输出书名、作者、读者
--8.	查询现有图书中价格最高的图书，输出书名及作者。
