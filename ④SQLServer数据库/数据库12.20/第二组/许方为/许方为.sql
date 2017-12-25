SELECT * FROM zuoye;

INSERT INTO zuoye VALUES (1,'小明','男','14','清华it','60')
INSERT INTO zuoye VALUES (2,'小红','女','19','搬运工','60')
INSERT INTO zuoye VALUES (3,'小百','男','16','泥瓦匠','60')
INSERT INTO zuoye VALUES (4,'小黑','女','20','医生','60')
INSERT INTO zuoye VALUES (5,'小话','男','21','老师','60')
INSERT INTO zuoye VALUES (6,'小花','男','11','幼师','60')
INSERT INTO zuoye VALUES (7,'小敏','女','15','拉车','60')
INSERT INTO zuoye VALUES (8,'小月','男','17','推车','60')
INSERT INTO zuoye VALUES (9,'小方','男','18','铺砖','60')
INSERT INTO zuoye VALUES (10,'小同','女','33','减肥','60')
--1.	查询全体学生的学号与姓名。
SELECT a.xuehao,a.xingming
from zuoye a
--2.	查询全体学生的姓名、学号、专业。
SELECT b.xingming,b.xuehao,b.zuanyeming
from zuoye b
--3.	查全体学生的姓名及其年龄
SELECT c.xingming,c.nianling
from zuoye c
--4.	查询“计算机科学”专业全体学生的名单。
SELECT D.zuanyeming '幼师',d.xingming
from zuoye D
--5.	查询所有年龄在20岁以下的学生姓名及其年龄
SELECT e.nianling '<20'
from zuoye e
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT *
from zuoye f
where f.nianling <18
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT *
FROM zuoye j
WHERE j.chengji=60;
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄
SELECT *
FROM zuoye h
WHERE h.nianling>=18
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄
SELECT q.xingming,q.zuanyeming,q.nianling
FROM zuoye q
WHERE not(q.nianling>=20 OR q.nianling<=23)
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT *
from zuoye g
WHERE g.zuanyeming='拉车'
--14.	查询姓“李”且全名为三个汉字的学生的姓名
SELECT *
FROM zuoye l
HAVING l.xingming='小%'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT *
from zuoye o
WHERE o.xingming= '%方'










 
 






























