INSERT INTO abc VALUES(1,'赵云','男',17,'计算机科学',null)
INSERT INTO abc VALUES(2,'吕布','男',16,'计算机科学',90)
INSERT INTO abc VALUES(3,'黄忠','男',20,'数学系',80)
INSERT INTO abc VALUES(4,'貂蝉','女',18,'数学系',92)
INSERT INTO abc VALUES(5,'孙尚香','女',17,'数学系',50)
INSERT INTO abc VALUES(6,'刘备','男',19,'计算机科学',70)
INSERT INTO abc VALUES(7,'吕布','男',19,'数学系',90)
INSERT INTO abc VALUES(8,'孙膑','男',18,'数学系',97)
INSERT INTO abc VALUES(9,'诸葛亮','男',21,'计算机科学',100)
INSERT INTO abc VALUES(10,'周瑜','男',20,'计算机科学',58)
INSERT INTO abc VALUES(11,'小乔','女',17,'数学系',92)
INSERT INTO abc VALUES(12,'大乔','女',21,'it',93)
INSERT INTO abc VALUES(13,'张飞','男',20,'it',70)
INSERT INTO abc VALUES(14,'关羽','男',16,'数学系',80)
INSERT INTO abc VALUES(15,'曹操','男',20,'it',100)
INSERT INTO abc VALUES(16,'刘禅','男',18,'计算机科学',90)
INSERT INTO abc VALUES(17,'芈月','女',21,'it',95)
INSERT INTO abc VALUES(18,'姜子牙','男',19,'数学系',100)
INSERT INTO abc VALUES(19,'李元芳','男',19,'it',100)
INSERT INTO abc VALUES(20,'张丽丽','女',19,'it',91)

SELECT*FROM abc
DELETE FROM abc
--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.sno ,a.sname
from abc a
WHERE a.grade IS NULL

--2.	查询每个专业内学生的平均成绩。
SELECT a.sdept, AVG(a.grade)
from abc a
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
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT a.sdept,AVG(a.grade)
from abc a
GROUP BY a.sdept 
ORDER BY AVG(a.grade) DESC
--4.查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from abc b
ORDER BY b.sdept,b.sage DESC
--8.	查询每个专业中成绩最好的学生成绩。
SELECT a.sdept,MAX(a.grade)
from abc a
GROUP BY a.sdept 
--9.	查询每个专业中成绩最差的学生成绩。
SELECT a.sdept,MIN(a.grade)
from abc a
GROUP BY a.sdept 
--11.	查询男生和女生的平均成绩。
SELECT a.ssex,AVG(a.grade)
from abc a
GROUP BY a.ssex