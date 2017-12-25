INSERT INTO xsb VALUES(1,'赵云','男',17,'计算机科学',90)
INSERT INTO xsb VALUES(2,'吕布','男',16,'计算机科学',90)
INSERT INTO xsb VALUES(3,'黄忠','男',20,'数学系',80)
INSERT INTO xsb VALUES(4,'貂蝉','女',18,'数学系',92)
INSERT INTO xsb VALUES(5,'孙尚香','女',17,'数学系',50)
INSERT INTO xsb VALUES(6,'刘备','男',19,'计算机科学',70)
INSERT INTO xsb VALUES(7,'吕布','男',19,'数学系',90)
INSERT INTO xsb VALUES(8,'孙膑','男',18,'数学系',97)
INSERT INTO xsb VALUES(9,'诸葛亮','男',21,'计算机科学',100)
INSERT INTO xsb VALUES(10,'周瑜','男',20,'计算机科学',58)
INSERT INTO xsb VALUES(11,'小乔','女',17,'数学系',92)
INSERT INTO xsb VALUES(12,'大乔','女',21,'it',93)
INSERT INTO xsb VALUES(13,'张飞','男',20,'it',70)
INSERT INTO xsb VALUES(14,'关羽','男',16,'数学系',80)
INSERT INTO xsb VALUES(15,'曹操','男',20,'it',100)
INSERT INTO xsb VALUES(16,'刘禅','男',18,'计算机科学',90)
INSERT INTO xsb VALUES(17,'芈月','女',21,'it',95)
INSERT INTO xsb VALUES(18,'姜子牙','男',19,'数学系',100)
INSERT INTO xsb VALUES(19,'李元芳','男',19,'it',100)
INSERT INTO xsb VALUES(20,'张丽丽','女',19,'it',91)

SELECT*FROM xsb
DELETE FROM xsb

--1.查询全体学生的学号与姓名。
SELECT  a.sno, a.sname
FROM xsb a 
--2.查询全体学生的姓名、学号、专业。
SELECT a.sname,a.sno,a.sdept
from xsb a
--3.查全体学生的姓名及其年龄。
SELECT a.sname,a.sage
from xsb a
--4.查询“计算机科学”专业全体学生的名单。
SELECT *
from xsb WHERE sdept='计算机科学'
--5.查询所有年龄在20岁以下的学生姓名及其年龄
SELECT *
FROM xsb WHERE sage<20
--6.查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT a.sname,a.sage,a.grade
from xsb a WHERE a.sage<18 ORDER BY a.grade
--7.查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT a.sno,a.grade 
from xsb a WHERE a.grade<60  ORDER BY a.grade desc
--8.查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT a.sname,a.sdept,a.sage
from xsb a WHERE a.sage>=18 AND a.sage<=22
--9.查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT a.sname,a.sdept,a.sage
from xsb a WHERE NOT(a.sage>=20 AND a.sage<=23  )
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT a.sname,a.ssex,a.sdept
from xsb a
 WHERE a.sdept='信息系'OR a.sdept='数学系' OR a.sdept='计算机科学'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT a.sname,a.ssex,a.sdept
from xsb a WHERE NOT(a.sdept='查询信息系'OR a.sdept='数学系' OR a.sdept='计算机科学' )
--12.查询学号为09102040203的学生的详细情况
SELECT a.sno,a.sname,a.ssex,a.sage,a.sdept,a.grade
from xsb a
WHERE a.sno=09102040203
--13.查询所有姓“张”学生的姓名、学号和性别
SELECT a.sname,a.sno,a.ssex
from xsb a
WHERE a.sname LIKE'张%'
--14.查询姓“李”且全名为三个汉字的学生的姓名
SELECT a.sname
from xsb a
WHERE a.sname LIKE'李%'
--15.查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT a.sname,a.sno
from xsb a
WHERE a.sname LIKE'%丽%'
--16.	查询所有不姓“陈”的学生姓名。
SELECT a.sname
from xsb a WHERE NOT(a.sname LIKE'陈%')