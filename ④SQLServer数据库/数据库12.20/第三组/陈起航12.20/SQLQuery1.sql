SELECT*FROM cool
delete FROM cool


INSERT INTO cool  VALUES('1','张飞','男',20,'计算机',45)
INSERT INTO cool  VALUES('2','李丽小','女',34,'机电系',67)
INSERT INTO cool  VALUES('3','张三','女',45,'高铁系',78)
INSERT INTO cool  VALUES('4','张小','男',56,'建筑系',89)
INSERT INTO cool  VALUES('5','小四','女',43,'学前系',89)
INSERT INTO cool  VALUES('6','小李','男',14,'汽修系',100)
INSERT INTO cool  VALUES('7','陈起航','女',15,'财经系',90)
--1.	查询全体学生的学号与姓名
SELECT a.Sno,a.Sname
from cool a

--2.	查询全体学生的姓名、学号、专业
SELECT b.Sname,b.Sno,b.Sdept
from cool b

--3.	查全体学生的姓名及其年龄
SELECT f.Sname,f.Sage
from cool f

--4.	查询“计算机科学”专业全体学生的名单

SELECT  e.Sdept
from cool e
--5.	查询所有年龄在20岁以下的学生姓名及其年龄
SELECT *
from cool c
WHERE c.Sage<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT y.Sname,y.Sage,y.Grade
from cool y
WHERE y.Sage<16
ORDER BY y.Grade
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列
SELECT p.Sno
from cool p
WHERE p.Grade<60
ORDER BY p.Grade DESC

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄
SELECT  i.Sage,i.Sname,i.Sdept,i.Sage
from cool i
WHERE i.Sage>=18AND i.Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄
SELECT o.Sname,o.Sdept,o.Sage
from cool o
WHERE not( o.Sage>=20AND o.Sage<=23)
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT q.Sname,q.Ssex
from cool q
WHERE q.Sdept='机电系' OR q.Sdept='学前系' OR q.Sdept='财经系'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
SELECT  t.Sdept,t.Sname,t.Ssex
from cool t
WHERE t.Sdept !='机电系' AND t.Sdept!='学前系' AND t.Sdept!='财经系'
-- 12.	查询学号为09102040203的学生的详细情况
SELECT *
from cool m
WHERE m.Sno='09102040203'
--13.	查询所有姓“张”学生的姓名、学号和性别
SELECT*
from cool e
WHERE e.Sname LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名
SELECT*
FROM cool u
WHERE u.Sname LIKE '李__%'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT*
FROM cool k
WHERE k.Sname LIKE '_丽%'

--16.	查询所有不姓“陈”的学生姓名
SELECT*
FROM cool n
WHERE n.Sname LIKE'陈%'