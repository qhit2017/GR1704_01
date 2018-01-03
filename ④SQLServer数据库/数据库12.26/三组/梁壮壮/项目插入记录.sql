--借书卡表中 插入班级20个学生 (5分)
INSERT INTO card VALUES(1,'张戈','四班')
INSERT INTO card VALUES(2,'梁哲','四班')
INSERT INTO card VALUES(3,'张戈戈','三班')
INSERT INTO card VALUES(4,'梁哲哲','三班')
INSERT INTO card VALUES(5,'王文政','二班')
INSERT INTO card VALUES(6,'张雯雯','二班')
INSERT INTO card VALUES(7,'王政政','一班')
INSERT INTO card VALUES(8,'陈启航','四班')
INSERT INTO card VALUES(9,'党柳涛','四班')
INSERT INTO card VALUES(10,'张家豪','四班')
INSERT INTO card VALUES(11,'王文文','三班')
INSERT INTO card VALUES(12,'党溜溜','三班')
INSERT INTO card VALUES(13,'党涛涛','三班')
INSERT INTO card VALUES(14,'陈琪琪','二班')
INSERT INTO card VALUES(15,'陈航航','二班')
INSERT INTO card VALUES(16,'张佳佳','二班')
INSERT INTO card VALUES(17,'张浩浩','一班')
INSERT INTO card VALUES(18,'刘博','一班')
INSERT INTO card VALUES(19,'刘博博','一班')
INSERT INTO card VALUES(20,'袁瑞超','一班')

SELECT *FROM card





--图书表中 插入：水浒传、西游记、三国、红楼梦、计算机基础、网络安全原理、
--互联网+、计算机硬件、数据库原理 这些书 (5分)   BNO 书号，BNAME 书名,AUTHOR 作者，PRICE 单价，QUANTITY 库存册数 ）
INSERT INTO books VALUES(1,'水浒传','施耐庵',35.9,100)
INSERT INTO books VALUES(2,'西游记','吴承恩',35.9,100)
INSERT INTO books VALUES(3,'三国演义','罗贯中',35.9,100)
INSERT INTO books VALUES(4,'红楼梦','曹雪芹',35.9,100)
INSERT INTO books VALUES(5,'计算机基础','麻县委',35.9,100)
INSERT INTO books VALUES(6,'网络安全原理','党县委',35.9,100)
INSERT INTO books VALUES(7,'互联网','梁县委',35.9,100)
INSERT INTO books VALUES(8,'计算机硬件','卢县委',35.9,100)
INSERT INTO books VALUES(9,'数据库原理','刘县委',35.9,100)

SELECT * FROM books





-- 借书记录表中插入：不少于30条记录(10分)	CNO 借书卡号，BNO 书号，JDATE 借书日期
INSERT INTO borrow VALUES(1,1,'2017-12-26')
INSERT INTO borrow VALUES(1,2,'2018-12-26')
INSERT INTO borrow VALUES(2,3,'2018-12-26')
INSERT INTO borrow VALUES(2,4,'2018-12-26')
INSERT INTO borrow VALUES(3,5,'2018-12-26')
INSERT INTO borrow VALUES(3,6,'2017-12-26')
INSERT INTO borrow VALUES(4,7,'2017-12-26')
INSERT INTO borrow VALUES(4,8,'2017-12-26')
INSERT INTO borrow VALUES(5,9,'2017-12-26')
INSERT INTO borrow VALUES(5,1,'2017-12-26')
INSERT INTO borrow VALUES(6,2,'2017-12-26')
INSERT INTO borrow VALUES(6,3,'2017-12-26')
INSERT INTO borrow VALUES(7,4,'2017-12-26')
INSERT INTO borrow VALUES(7,5,'2017-12-26')
INSERT INTO borrow VALUES(8,6,'2017-12-26')
INSERT INTO borrow VALUES(8,7,'2017-12-26')
INSERT INTO borrow VALUES(9,8,'2017-12-26')
INSERT INTO borrow VALUES(9,9,'2017-12-26')
INSERT INTO borrow VALUES(10,1,'2017-12-26')
INSERT INTO borrow VALUES(10,2,'2017-12-26')
INSERT INTO borrow VALUES(11,3,'2017-12-26')
INSERT INTO borrow VALUES(11,4,'2017-12-26')
INSERT INTO borrow VALUES(12,5,'2017-12-26')
INSERT INTO borrow VALUES(13,6,'2017-12-26')
INSERT INTO borrow VALUES(13,7,'2017-12-26')
INSERT INTO borrow VALUES(12,8,'2017-12-26')
INSERT INTO borrow VALUES(14,9,'2017-12-26')
INSERT INTO borrow VALUES(15,1,'2017-12-26')
INSERT INTO borrow VALUES(16,2,'2017-12-26')
INSERT INTO borrow VALUES(16,3,'2017-12-26')
INSERT INTO borrow VALUES(17,4,'2017-12-26')
INSERT INTO borrow VALUES(18,5,'2017-12-26')
INSERT INTO borrow VALUES(19,6,'2017-12-26')
INSERT INTO borrow VALUES(20,7,'2017-12-26')

SELECT * FROM borrow