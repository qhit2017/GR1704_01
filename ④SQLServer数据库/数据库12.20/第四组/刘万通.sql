INSERT INTO student VALUES (1,'赵云','男',199,'清华IT',89)
INSERT INTO student VALUES (2,'关于','男',139,'清华IT',73)
INSERT INTO student VALUES (3,'关云长','男',139,'清华IT',59)
INSERT INTO student VALUES (4,'张飞','男',179,'清华IT',78)
INSERT INTO student VALUES (5,'张翼德','男',112,'清华IT',12)
INSERT INTO student VALUES (6,'刘备','男',18,'清华IT',44)
INSERT INTO student VALUES (7,'刘玄德','男',179,'清华IT',19)
SELECT * FROM student
--查询所有学生学号与姓名
SELECT a.sno ,a.sname
FROM student a
--查询全体学生的姓名、学号、专业。
SELECT b.sname,b.sno,b.Sdept
FROM student b
--查全体学生的姓名及其年龄。
SELECT c.sname,c.sage
from student c
--查询“计算机科学”专业全体学生的名单。
SELECT*
FROM student d
WHERE d.Sdept='清华IT'
--查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT  e.sname,e.sage
FROM student e
WHERE e.sage<20
--查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.sname,f.sage,f.Grade
from student f
WHERE f.sage<180
SELECT *FROM student j
ORDER BY  j.Grade

--查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT h.sno
from student h
WHERE h.Grade<60
SELECT *FROM student i
ORDER BY i.Grade DESC 
--查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT g.sname,g.Sdept,g.sage
from student g
WHERE g.sage BETWEEN 18 AND 22
--查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT g.sname,g.Sdept,g.sage
from student g
WHERE g.sage NOT  BETWEEN 20 AND 23
--查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
WHERE a.Sdept='信息系' or a.Sdept='数学系'or a.Sdept='计算机科学系'
--查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
WHERE a.Sdept!='信息系' or a.Sdept!='数学系'or a.Sdept!='计算机科学系'
--查询学号为09102040203的学生的详细情况。
SELECT c.sno,c.sname,c.ssex,c.sage,c.sdept,c.grade
from student c
WHERE c.sno=09102040203
--查询所有姓“张”学生的姓名、学号和性别。
SELECT c.sname,c.sno,c.ssex
from student c
WHERE c.sname LIKE '张%' 
--查询姓“李”且全名为三个汉字的学生的姓名。
SELECT c.sname
from student c
WHERE c.sname LIKE '李__' 
--查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT c.sname,c.sno
from student c
WHERE c.sname LIKE '_丽_' 
--查询所有不姓“陈”的学生姓名。
SELECT c.sname
from student c
WHERE c.sname  not LIKE '陈%' 
