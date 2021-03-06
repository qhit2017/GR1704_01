





SELECT *FROM CARD 
DELETE FROM CARD where CNO =1
INSERT   INTO   CARD VALUES (1,'陈启航','四班')
INSERT   INTO   CARD VALUES (2,'二','三班')
INSERT   INTO   CARD VALUES (3,'三','一班')
INSERT   INTO   CARD VALUES (4,'四','一班')
INSERT   INTO   CARD VALUES (5,'五','四班')
INSERT   INTO   CARD VALUES (6,'六','二班')
INSERT   INTO   CARD VALUES (7,'七','三班')
INSERT   INTO   CARD VALUES (8,'八','四班')
INSERT   INTO   CARD VALUES (9,'九','一班')
INSERT   INTO   CARD VALUES (10,'十','四班')
INSERT   INTO   CARD VALUES (11,'十一','三班')
INSERT   INTO   CARD VALUES (12,'十二','三班')
INSERT   INTO   CARD VALUES (13,'十三','四班')
INSERT   INTO   CARD VALUES (14,'十四','一班')
INSERT   INTO   CARD VALUES (15,'十五','四班')
INSERT   INTO   CARD VALUES (16,'十六','二班')
INSERT   INTO   CARD VALUES (17,'十七','四班')
INSERT   INTO   CARD VALUES (18,'十八','三班')
INSERT   INTO   CARD VALUES (19,'十九','四班')
INSERT   INTO   CARD VALUES (20,'二十','一班')

SELECT *FROM BOOKS 
INSERT INTO BOOKS VALUES (1,'水浒传','施耐庵',25,60)
INSERT INTO BOOKS VALUES (2,'西游记','吴承恩',30,120)
INSERT INTO BOOKS VALUES (3,'三国','罗贯中',28,18)
INSERT INTO BOOKS VALUES (4,'红楼梦','曹雪芹',35,30)
INSERT INTO BOOKS VALUES (5,'计算机基础','施耐庵',50,125)
INSERT INTO BOOKS VALUES (6,'网络安全原理','A',67,105)
INSERT INTO BOOKS VALUES (7,'互联网+','B',22,10)
INSERT INTO BOOKS VALUES (8,'计算机硬件','C',80,5)
INSERT INTO BOOKS VALUES (9,'数据库原理','D',125,5)

SELECT *FROM BORROW 
DELETE  from BORROW  
INSERT  INTO BORROW VALUES (1,5,'2001-10-02')
INSERT  INTO BORROW VALUES (1,6,'2001-11-02')
INSERT  INTO BORROW VALUES (9,8,'2001-09-02')
INSERT  INTO BORROW VALUES (6,1,'2001-07-02')
INSERT  INTO BORROW VALUES (7,7,'2001-05-02')
INSERT  INTO BORROW VALUES (7,6,'2001-09-02')
INSERT  INTO BORROW VALUES (5,1,'2001-07-02')
INSERT  INTO BORROW VALUES (3,6,'2001-11-02')
INSERT  INTO BORROW VALUES (12,4,'2001-12-02')
INSERT  INTO BORROW VALUES (11,4,'2001-10-02')
INSERT  INTO BORROW VALUES (15,6,'2001-7-02')
INSERT  INTO BORROW VALUES (20,5,'2001-2-02')
INSERT  INTO BORROW VALUES (19,6,'2001-06-02')
INSERT  INTO BORROW VALUES (18,9,'2001-07-02')
INSERT  INTO BORROW VALUES (16,4,'2001-08-02')
INSERT  INTO BORROW VALUES (12,5,'2001-10-02')
INSERT  INTO BORROW VALUES (18,5,'2001-11-02')
INSERT  INTO BORROW VALUES (16,3,'2001-05-02')
INSERT  INTO BORROW VALUES (14,6,'2001-12-02')
INSERT  INTO BORROW VALUES (18,2,'2001-08-02')
INSERT  INTO BORROW VALUES (20,4,'2001-04-02')
INSERT  INTO BORROW VALUES (15,6,'2001-09-02')
INSERT  INTO BORROW VALUES (13,9,'2001-07-02')
INSERT  INTO BORROW VALUES (17,9,'2001-08-02')
INSERT  INTO BORROW VALUES (20,6,'2001-03-02')
INSERT  INTO BORROW VALUES (9,7,'2001-04-02')
INSERT  INTO BORROW VALUES (6,3,'2001-09-02')
INSERT  INTO BORROW VALUES (20,4,'2001-03-02')
INSERT  INTO BORROW VALUES (18,5,'2001-07-02')
INSERT  INTO BORROW VALUES (2,4,'2001-05-02')

--1.	查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT a.bno ,a.bname ,a.author 
from BOOKS a INNER JOIN BORROW s ON a.bno =s.bno 
		INNER JOIN CARD c ON s.cno =c.CNO 
		AND a.bname LIKE '%原理%'


--2.	查询书的平均价格 
SELECT AVG(a.Price )  
from  BOOKS a


--3.	将计算机基础这本书的库存数量改为20，单价改为13.1
SELECT *FROM BOOKS 
UPDATE BOOKS SET    quantity =20 WHERE  bname  ='计算机基础' 
UPDATE BOOKS SET    Price =13.1 WHERE  bname  ='计算机基础'
--5.	查询哪本书被借的次数最多，输出书名和次数
--6.	查询陈启航分别借了哪些书
--7.	查询作者姓张的书，都被哪些读者借阅，输出书名、作者、读者
--8.	查询现有图书中价格最高的图书，输出书名及作者。
--9.	查询当前借了"三国"但没有借"互联网+"的读者，输出其借书卡号，并按卡号降序排序输出。
--10.	查询当前同时借有"互联网+"和"网络安全原理"两本书的读者，输出其借书卡号，并按卡号升序排序输出。
--11.	找出借书超过5本的读者,输出借书卡号及所借图书册数。
--12.	查询借阅了"水浒传"一书的读者，输出姓名及班级。
--13.	查询过期(离2017-12-30大于30天)未还图书，输出借阅者（卡号）、书号及借书日期。








