INSERT INTO jeishubiao VALUES (1,'关羽','四班')
INSERT INTO jeishubiao VALUES (2,'李白','四班')
INSERT INTO jeishubiao VALUES (3,'赵云','四班')
INSERT INTO jeishubiao VALUES (4,'刘备','三班')
INSERT INTO jeishubiao VALUES (5,'张飞','二班')
INSERT INTO jeishubiao VALUES (6,'曹操','一班')
INSERT INTO jeishubiao VALUES (7,'诸葛亮','三班')
INSERT INTO jeishubiao VALUES (8,'马超','三班')
INSERT INTO jeishubiao VALUES (9,'周瑜','二班')
INSERT INTO jeishubiao VALUES (10,'孙权','二班')
INSERT INTO jeishubiao VALUES (11,'姜维','一班')
INSERT INTO jeishubiao VALUES (12,'杜普','四班')
INSERT INTO jeishubiao VALUES (13,'黄忠','一班')
INSERT INTO jeishubiao VALUES (14,'吕布','二班')
INSERT INTO jeishubiao VALUES (15,'貂蝉','三班')
INSERT INTO jeishubiao VALUES (16,'魏延','四班')
INSERT INTO jeishubiao VALUES (17,'张辽','三班')
INSERT INTO jeishubiao VALUES (18,'许褚','四班')
INSERT INTO jeishubiao VALUES (19,'司马懿','一班')
INSERT INTO jeishubiao VALUES (20,'鲁肃','四班')

INSERT INTO tushubiao VALUES (101,'西游记','吴承恩',25,30)
INSERT INTO tushubiao VALUES (102,'水浒传','施耐庵',24,29)
INSERT INTO tushubiao VALUES (103,'红楼梦','曹雪芹',35,23)
INSERT INTO tushubiao VALUES (104,'三国演义','罗贯中',36,21)
INSERT INTO tushubiao VALUES (105,'计算机基础','刘万通',15,30)
INSERT INTO tushubiao VALUES (106,'网络安全原理','辛弃疾',16,43)
INSERT INTO tushubiao VALUES (107,'互联网+','习近平',8,34)
INSERT INTO tushubiao VALUES (108,'计算机硬件','马云',21,41)
INSERT INTO tushubiao VALUES (109,'数据库原理','毛泽东',19,38)


INSERT  INTO jilubiao VALUES (001,103,'2016-6-12')
INSERT  INTO jilubiao VALUES (002,105,'2016-8-13')
INSERT  INTO jilubiao VALUES (003,106,'2016-8-22')
INSERT  INTO jilubiao VALUES (004,103,'2016-8-24')
INSERT  INTO jilubiao VALUES (005,108,'2016-8-26')
INSERT  INTO jilubiao VALUES (006,104,'2016-9-12')
INSERT  INTO jilubiao VALUES (007,109,'2016-9-15')
INSERT  INTO jilubiao VALUES (008,101,'2016-9-17')
INSERT  INTO jilubiao VALUES (009,102,'2016-9-19')
INSERT  INTO jilubiao VALUES (0010,101,'2016-9-22')
INSERT  INTO jilubiao VALUES (0011,107,'2016-9-28')
INSERT  INTO jilubiao VALUES (0012,106,'2016-9-30')
INSERT  INTO jilubiao VALUES (0013,104,'2016-10-6')
INSERT  INTO jilubiao VALUES (0014,107,'2016-10-9')
INSERT  INTO jilubiao VALUES (0015,103,'2016-10-12')
INSERT  INTO jilubiao VALUES (0016,105,'2016-10-12')
INSERT  INTO jilubiao VALUES (0017,107,'2016-10-13')
INSERT  INTO jilubiao VALUES (0018,106,'2016-10-13')
INSERT  INTO jilubiao VALUES (0019,107,'2016-10-15')
INSERT  INTO jilubiao VALUES (0020,104,'2016-10-18')
INSERT  INTO jilubiao VALUES (0021,104,'2016-10-19')
INSERT  INTO jilubiao VALUES (0022,106,'2016-10-20')
INSERT  INTO jilubiao VALUES (0023,105,'2016-10-21')
INSERT  INTO jilubiao VALUES (0024,107,'2016-10-22')
INSERT  INTO jilubiao VALUES (0025,101,'2016-10-22')
INSERT  INTO jilubiao VALUES (0026,107,'2016-10-22')
INSERT  INTO jilubiao VALUES (0027,103,'2016-10-25')
INSERT  INTO jilubiao VALUES (0028,105,'2016-10-26')
INSERT  INTO jilubiao VALUES (0029,104,'2016-10-28')
INSERT  INTO jilubiao VALUES (0030,106,'2016-10-30')



--1.查询书名包括"原理"关键词的图书，输出书号、书名、作者。
SELECT a.bno,a.bname,a.author
from tushubiao a
WHERE a.bname LIKE '%原理%'
--2.查询书的平均价格  
SELECT AVG(a.price) 
from tushubiao a
--3.将计算机基础这本书的库存数量改为20，单价改为13.1
UPDATE tushubiao SET  quantity=20, price=13.1
WHERE bname='计算机基础'
--4.查询所有书的库存一共有多少 
SELECT SUM(a.quantity) 
from tushubiao a
--5.查询哪本书被借的次数最多，输出书名和次数

