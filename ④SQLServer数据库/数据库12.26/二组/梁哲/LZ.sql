--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT A.bno ,A.bname ,A.author 
FROM BOOKS A
WHERE A.bname LIKE '%原理%'
--2.	查询书的平均价格 
SELECT AVG(b.Price ) 
from BOOKS b 
--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE BOOKS SET quantity =20, Price =13.1
WHERE bname ='计算机基础'
--4.	查询所有书的库存一共有多少 
SELECT SUM(S.quantity ) 
FROM BOOKS S

