INSERT INTO Student VALUES (1,'刘一通','男',18,'计算机',60);
INSERT INTO Student VALUES (2,'刘二通','女',17,'计算机',95);
INSERT INTO Student VALUES (3,'刘三通','男',16,'计算机',78);
INSERT INTO Student VALUES (4,'刘四通','男',19,'美声',68);
INSERT INTO Student VALUES (5,'刘五通','女',14,'舞蹈',75);
INSERT INTO Student VALUES (6,'刘六通','男',20,'计算机',48);
INSERT INTO Student VALUES (7,'刘七通','女',16,'演员',32);
INSERT INTO Student VALUES (8,'刘八通','男',19,'土木工程',69);
INSERT INTO Student VALUES (9,'刘九通','女',18,'建筑',69);
INSERT INTO Student VALUES (10,'刘十通','男',17,'高铁',92);
INSERT INTO Student VALUES (11,'刘百通','女',15,'计算机',18);
INSERT INTO Student VALUES (12,'刘千通','男',15,'传销',20);
INSERT INTO Student VALUES (13,'刘万通','女',13,'计算机',95);
INSERT INTO Student VALUES (14,'刘俩通','男',14,'计算机',88);
INSERT INTO Student VALUES (15,'刘某通','女',18,'营销',68);
INSERT INTO Student VALUES (16,'刘亿通','女',19,'医学',80);

SELECT a.sno,a.sname
FROM Student a

SELECT a.sno,a.sname,a.sdept
FROM Student a

SELECT a.sage,a.sname
FROM Student a

SELECT * FROM Student where sdept = '计算机'

SELECT  a.sname,a.sage
FROM Student a where a.sage < 20

SELECT  a.sname,a.sage,a.grade
FROM Student a where a.sage < 18
ORDER BY a.grade

SELECT  a.sno,a.grade,a.sname
FROM Student a where a.grade < 60
ORDER BY a.grade

SELECT  a.sage,a.sdept,a.sname
FROM Student a WHERE a.sage between 18 and 22

SELECT  a.sage,a.sdept,a.sname
FROM Student a WHERE a.sage NOT between 18 and 22

SELECT  a.ssex,a.sname
FROM Student a WHERE a.sdept IN ('计算机','舞蹈','美声')

SELECT  a.ssex,a.sname
FROM Student a WHERE a.sdept not in('计算机','舞蹈','美声')

SELECT  *
FROM Student a where a.sno =10


SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '刘%'


SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '刘%__'

SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname LIKE '%二%'

SELECT  a.sno,a.sage,a.sname
FROM Student a where a.sname not LIKE '刘%'

INSERT INTO Student VALUES (17,'琪亿康','女',19,'医学',80);
