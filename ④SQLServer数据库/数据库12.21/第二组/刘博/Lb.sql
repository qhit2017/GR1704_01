INSERT INTO abc VALUES(1,'小张','男',17,'计算机科学系',null)
INSERT INTO abc VALUES(2,'小明','男',16,'语文系',90)
INSERT INTO abc VALUES(3,'小红','男',20,'数学系',80)
INSERT INTO abc VALUES(4,'小刘','女',18,'语文系',92)
INSERT INTO abc VALUES(5,'小陈','女',17,'数学系',50)
INSERT INTO abc VALUES(6,'小徐','男',19,'计算机科学系',70)
INSERT INTO abc VALUES(7,'小通','男',19,'语文系',90)
INSERT INTO abc VALUES(8,'小龙','男',18,'数学系',97)
INSERT INTO abc VALUES(9,'小家','男',21,'计算机科学系',100)
INSERT INTO abc VALUES(10,'小豪','男',20,'语文系',58)
INSERT INTO abc VALUES(11,'小波','女',17,'数学系',92)
INSERT INTO abc VALUES(12,'小尚','女',21,'计算器科学系',93)
INSERT INTO abc VALUES(13,'小伟','男',20,'计算器科学系',70)
INSERT INTO abc VALUES(14,'小杰','男',16,'数学系',80)
INSERT INTO abc VALUES(15,'小康','男',20,'计算器科学系',100)

SELECT*FROM abc
--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NULL
GROUP BY a.sdept
--3.	查所有有成绩的学生的学号和姓名。 
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NOT NULL
--5.查询学生总人数。
SELECT COUNT(*) as '总人数'
from abc a
--6.	查询男生和女生的人数。
SELECT a.ssex ,COUNT(*) 
from abc a
GROUP BY a.ssex
--8.	查询每个专业中成绩最好的学生成绩。
SELECT a.sdept,MAX(a.grade)
from abc a
GROUP BY a.sdept 

--11.	查询男生和女生的平均成绩。
SELECT a.ssex,AVG(a.grade)
from abc a
GROUP BY a.ssex