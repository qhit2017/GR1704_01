--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT b.bno,b.bname,b.authorprice
from [Books table] b 
 WHERE b.bname LIKE '%原理%'

--2.	查询书的平均价格  
SELECT avg(q.price)
from [Books table] q

--3.	将计算机基础这本书的库存数量改为20，单价改为13.1

 
 UPDATE [Books table] SET price='13.1', quantity='20'
 WHERE bname='计算机基础'
--4.	查询所有书的库存一共有多少 
SELECT SUM( b.quantity)
from [Books table] b
--5.	查询哪本书被借的次数最多，输出书名和次数
SELECT TOP 1 b.bname,COUNT(*)as '次数'
from [Books table] b INNER JOIN BORROW a ON b.bno=a.bno
 GROUP BY b.bname
 ORDER BY COUNT(*) DESC 

--6.	查询杨留枪分别借了哪些书


--7.	查询作者姓张的书，都被哪些读者借阅，输出书名、作者、读者

--8.	查询现有图书中价格最高的图书，输出书名及作者。
--9.	查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。
--10.	查询当前同时借有"互联网+"和"网络安全原理"两本书的读者，输出其借书卡号，并按卡号升序排序输出。
--11.	找出借书超过5本的读者,输出借书卡号及所借图书册数。
--12.	查询借阅了"水浒传"一书的读者，输出姓名及班级。
--13.	查询过期(离2017-12-30大于30天)未还图书，输出借阅者（卡号）、书号及借书日期。


