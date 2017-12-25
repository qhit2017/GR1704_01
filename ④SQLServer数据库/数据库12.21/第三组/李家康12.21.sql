INSERT INTO Student VALUES (1,'琪一康','男',18,'计算机',60);
INSERT INTO Student VALUES (2,'琪二康','女',17,'计算机',95);
INSERT INTO Student VALUES (3,'琪三康','男',16,'计算机',78);
INSERT INTO Student VALUES (4,'琪四康','男',19,'美声',68);
INSERT INTO Student VALUES (5,'琪五康','女',14,'舞蹈',75);
INSERT INTO Student VALUES (6,'琪六康','男',20,'计算机',48);
INSERT INTO Student VALUES (7,'琪七康','女',16,'演员',32);
INSERT INTO Student VALUES (8,'琪八康','男',19,'土木工程',69);
INSERT INTO Student VALUES (9,'琪九康','女',18,'建筑',69);
INSERT INTO Student VALUES (10,'琪十康','男',17,'高铁',92);
INSERT INTO Student VALUES (11,'琪百康','女',15,'计算机',18);
INSERT INTO Student VALUES (12,'琪千康','男',15,'传销',20);
INSERT INTO Student VALUES (13,'琪万康','女',13,'计算机',95);
INSERT INTO Student VALUES (14,'琪俩康','男',14,'计算机',88);
INSERT INTO Student VALUES (15,'琪某康','女',18,'营销',68);
INSERT INTO Student VALUES (16,'琪亿康','女',19,'医学',80);
INSERT INTO Student VALUES (17,'刘一通','男',18,'计算机',60);
INSERT INTO Student VALUES (18,'刘二通','女',17,'计算机',95);
INSERT INTO Student VALUES (19,'刘三通','男',16,'计算机',78);
INSERT INTO Student VALUES (20,'刘四通','男',19,'美声',68);
INSERT INTO Student VALUES (21,'刘五通','女',14,'舞蹈',75);
INSERT INTO Student VALUES (22,'刘六通','男',20,'计算机',48);
INSERT INTO Student VALUES (23,'刘七通','女',16,'演员',32);
INSERT INTO Student VALUES (24,'刘八通','男',19,'土木工程',69);
INSERT INTO Student VALUES (25,'刘九通','女',18,'建筑',69);
INSERT INTO Student VALUES (26,'刘十通','男',17,'高铁',92);
INSERT INTO Student VALUES (27,'刘百通','女',15,'计算机',18);
INSERT INTO Student VALUES (28,'刘千通','男',15,'传销',20);
INSERT INTO Student VALUES (29,'刘万通','女',13,'计算机',95);
INSERT INTO Student VALUES (30,'刘俩通','男',14,'计算机',88);
INSERT INTO Student VALUES (31,'刘某通','女',18,'营销',68);
INSERT INTO Student VALUES (32,'刘亿通','女',19,'医学',80);

SELECT a.sdept,avg (a.grade) as '平均分' 
from Student a
GROUP by a.sdept
ORDER by avg (a.grade) desc


SELECT a.ssex,avg (a.grade) as '平均分' 
from Student a
GROUP by a.ssex

SELECT a.sdept,max (a.grade) as '最高分' 
from Student a
GROUP by a.sdept

SELECT a.sdept,count(*) as'总数'
from Student a
GROUP by a.sdept

SELECT a.sdept,avg (a.grade) as '平均分' 
from Student a
GROUP by a.sdept

