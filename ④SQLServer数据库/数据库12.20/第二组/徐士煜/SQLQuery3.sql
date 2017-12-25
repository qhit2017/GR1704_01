SELECT * FROM student
DELETE student
INSERT INTO student VALUES(09102040203,'张三','男',16,'IT','98')
INSERT INTO student VALUES(09102040204,'李四','男',17,'IC','97')
INSERT INTO student VALUES(09102040205,'王五','男',18,'IQ','96')
INSERT INTO student VALUES(09102040206,'甲','男',19,'IE','95')
INSERT INTO student VALUES(09102040207,'乙','男',20,'IW','94')
INSERT INTO student VALUES(09102040208,'丙','男',21,'IA','93')
INSERT INTO student VALUES(09102040209,'丁','男',22,'IC','92')
INSERT INTO student VALUES(09102040201,'陈','男',23,'IV','91')
--1.	查询全体学生的学号与姓名。
SELECT a.Sno,a.Sname
from student a
--2.	查询全体学生的姓名、学号、专业。
SELECT b.Sno,b.Sname,b.Sdept
from student b
--3.	查全体学生的姓名及其年龄。
SELECT c.Sname,c.sage
from student c
--4.	查询“计算机科学”专业全体学生的名单
SELECT *
FROM student WHERE Sname='计算机科学'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *
FROM student WHERE Sage<20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.Sname,f.Sage,f.Grade
FROM student f
WHERE f.Sage<18
ORDER BY f.Grade
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT g.Sno
FROM student g
ORDER BY g.Grade ASC
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT h.Sname,h.Sage,h.Sdept
FROM student h
WHERE 18<h.Sage AND h.Sage<22
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT i.Sname,i.Sage,i.Sdept
FROM student i
WHERE 20<i.Sage AND i.Sage>23
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT j.Sdept,j.Sname,j.Ssex
FROM student j
WHERE j.Sdept='IS' AND j.Sdept='MA' AND j.Sdept='CS'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT k.Sdept,k.Sname,k.Ssex
FROM student k
WHERE k.Sdept!='IS' AND k.Sdept!='MA' AND k.Sdept!='CS'
--12.	查询学号为9102040203的学生的详细情况。
SELECT *
from student l
WHERE l.Sno=9102040203
--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT m.Sname,m.Sdept,m.ssex
FROM student m
WHERE m.Sname='张%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT n.Sname
FROM student n
WHERE n.Sname='张__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT o.Sname,o.Sdept
FROM student o
WHERE o.Sname='_丽%'
--16.	查询所有不姓“陈”的学生姓名。
SELECT p.Sname
FROM student p
WHERE p.Sname!='陈%'

