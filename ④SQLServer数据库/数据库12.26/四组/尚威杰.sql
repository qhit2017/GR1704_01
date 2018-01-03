SELECT *FROM CARD 

SELECT * FROM BOOKS

SELECT * FROM BORROW

--1.查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT a.bno,a.bname,a.author
from BOOKS a
where a.bname LIKE '%原理%'
--2.	查询书的平均价格
SELECT AVG(a.Price) 
from BOOKS a
--3.将计算机基础这本书的库存数量改为20，单价改为13.1
 UPDATE BOOKS SET quantity ='30',Price ='13.1'
 WHERE bname ='计算机基础'
--4.查询所有书的库存一共有多少
SELECT SUM(b.quantity) 
from BOOKS b 
--5.查询哪本书被借的次数最多，输出书名和次数
SELECT MAX(b.bname),COUNT(*) 
from BOOKS b INNER JOIN BORROW c 
ON b.bno=c.bno
--6.	查询陈启航分别借了哪些书
SELECT a.bname
from CARD c INNER JOIN BORROW r
ON c.Cno=r.cno
INNER JOIN BOOKS a	
ON a.bno=r.bno
AND c.Name='陈启航'
--7.	查询作者姓张的书，都被哪些读者借b阅，输出书名、作者、读者
SELECT a.bname,a.author,c.Name
from CARD c INNER JOIN BORROW r
ON c.Cno=r.cno
INNER JOIN BOOKS a	
ON a.bno=r.bno 
WHERE a.author LIKE '陈%'
--8.	查询现有图书中价格最高的图书，输出书名及作者。
SELECT TOP 1 a.bname,a.author
from BOOKS a
GROUP BY a.Price,a.bname,a.author
ORDER BY a.Price DESC 
--9.	查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。
