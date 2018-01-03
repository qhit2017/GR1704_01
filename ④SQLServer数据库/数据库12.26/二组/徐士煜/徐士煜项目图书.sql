--    一
SELECT * FROM card
SELECT * FROM books
SELECT * FROM borrow

--    二
--card
INSERT INTO card VALUES(1,'徐士煜','四班')
INSERT INTO card VALUES(2,'徐一煜','四班')
INSERT INTO card VALUES(3,'徐二煜','四班')
INSERT INTO card VALUES(4,'徐三煜','四班')
INSERT INTO card VALUES(5,'徐四煜','四班')
INSERT INTO card VALUES(6,'徐五煜','四班')
INSERT INTO card VALUES(7,'徐六煜','四班')
INSERT INTO card VALUES(8,'徐七煜','四班')
INSERT INTO card VALUES(9,'徐八煜','四班')
INSERT INTO card VALUES(10,'徐九煜','四班')
INSERT INTO card VALUES(11,'徐十煜','四班')
INSERT INTO card VALUES(12,'徐士一','九班')
INSERT INTO card VALUES(13,'徐士二','九班')
INSERT INTO card VALUES(14,'徐士三','九班')
INSERT INTO card VALUES(15,'徐士四','九班')
INSERT INTO card VALUES(16,'徐士五','九班')
INSERT INTO card VALUES(17,'徐士六','九班')
INSERT INTO card VALUES(18,'徐士七','九班')
INSERT INTO card VALUES(19,'徐士八','九班')
INSERT INTO card VALUES(20,'徐士九','九班')

--books
INSERT INTO books VALUES(1,'水浒传','甲',50,20)
INSERT INTO books VALUES(2,'西游记','乙',50,20)
INSERT INTO books VALUES(3,'三国','丙',50,20)
INSERT INTO books VALUES(4,'红楼梦','丁',50,20)
INSERT INTO books VALUES(5,'计算机基础','一',50,20)
INSERT INTO books VALUES(6,'网络安全原理','二',50,20)
INSERT INTO books VALUES(7,'互联网+','三',50,20)
INSERT INTO books VALUES(8,'计算机硬件','四',50,20)
INSERT INTO books VALUES(9,'数据库原理','五',50,20)

--borrow
INSERT INTO borrow VALUES(1,1,'2000-1-1')
INSERT INTO borrow VALUES(1,2,'2000-1-1')
INSERT INTO borrow VALUES(1,3,'2000-1-1')
INSERT INTO borrow VALUES(1,3,'2000-1-1')
INSERT INTO borrow VALUES(1,4,'2000-1-1')
INSERT INTO borrow VALUES(1,5,'2000-1-1')
INSERT INTO borrow VALUES(1,6,'2000-1-1')
INSERT INTO borrow VALUES(1,7,'2000-1-1')
INSERT INTO borrow VALUES(1,8,'2000-1-1')
INSERT INTO borrow VALUES(1,9,'2000-1-1')
INSERT INTO borrow VALUES(1,10,'2000-1-1')
INSERT INTO borrow VALUES(1,11,'2000-1-1')
INSERT INTO borrow VALUES(1,12,'2000-1-1')
INSERT INTO borrow VALUES(1,13,'2000-1-1')
INSERT INTO borrow VALUES(1,14,'2000-1-1')
INSERT INTO borrow VALUES(1,15,'2000-1-1')
INSERT INTO borrow VALUES(1,16,'2000-1-1')
INSERT INTO borrow VALUES(1,17,'2000-1-1')
INSERT INTO borrow VALUES(1,18,'2000-1-1')
INSERT INTO borrow VALUES(1,19,'2000-1-1')
INSERT INTO borrow VALUES(2,1,'2000-1-2')
INSERT INTO borrow VALUES(2,2,'2000-1-2')
INSERT INTO borrow VALUES(2,3,'2000-1-2')
INSERT INTO borrow VALUES(2,4,'2000-1-2')
INSERT INTO borrow VALUES(2,5,'2000-1-2')
INSERT INTO borrow VALUES(2,6,'2000-1-2')
INSERT INTO borrow VALUES(2,7,'2000-1-2')
INSERT INTO borrow VALUES(2,8,'2000-1-2')
INSERT INTO borrow VALUES(2,9,'2000-1-2')
INSERT INTO borrow VALUES(2,10,'2000-1-2')
INSERT INTO borrow VALUES(2,11,'2000-1-2')
INSERT INTO borrow VALUES(3,1,'2000-1-3')
INSERT INTO borrow VALUES(3,2,'2000-1-4')
INSERT INTO borrow VALUES(3,3,'2000-1-5')
INSERT INTO borrow VALUES(3,4,'2000-1-6')
INSERT INTO borrow VALUES(3,5,'2000-1-7')

--   三
--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT a.bno,a.bname,a.author
from books a
WHERE a.bname LIKE '%原理%'
--2.	查询书的平均价格  
SELECT AVG(b.Price)
from books b
--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE books SET quantity=30,Price=13.1
WHERE bname='计算机基础'
--4.	查询所有书的库存一共有多少 
SELECT sum(c.quantity)
FROM books c
--5.	查询哪本书被借的次数最多，输出书名和次数
SELECT MAX(b.bname),COUNT(*)
FROM books b INNER JOIN borrow r
ON b.bno=r.bno
--6.	查询陈启航分别借了哪些书
SELECT b.bname
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE c.Name='陈起航'
--7.	查询作者姓张的书，都被哪些读者借阅，输出书名、作者、读者
SELECT c.Name,b.bname,b.author
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE b.author LIKE '张%'
--8.	查询现有图书中价格最高的图书，输出书名及作者。
SELECT MAX(b.Price)
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno

SELECT b.bname,b.author
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno
WHERE b.Price=(SELECT MAX(b.Price)
from borrow r INNER JOIN card c
ON c.Cno=r.cno INNER JOIN books b
ON b.bno=r.bno)
--9.	查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。
--10.	查询当前同时借有"互联网+"和"网络安全原理"两本书的读者，输出其借书卡号，并按卡号升序排序输出。
--11.	找出借书超过5本的读者,输出借书卡号及所借图书册数。
--12.	查询借阅了"水浒传"一书的读者，输出姓名及班级。
--13.	查询过期(离2017-12-30大于30天)未还图书，输出借阅者（卡号）、书号及借书日期。

