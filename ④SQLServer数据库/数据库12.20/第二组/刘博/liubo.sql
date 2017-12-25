
INSERT INTO zuoye VALUES('1','明小','男',20,'计算机科学系',79)

INSERT INTO zuoye VALUES('2','红小','女',19,'机电维修学系',90)

INSERT INTO zuoye VALUES('3','张小','女',18,'语文教育学系',85)

INSERT INTO zuoye VALUES('4','许小','男',18,'信息系',65)

INSERT INTO zuoye VALUES('5','陈小','男',19,'数学系',75)

INSERT INTO zuoye VALUES('6','梁小','男',16,'信息系',70)

INSERT INTO zuoye VALUES('7','王小','女',17,'数学系',55)

INSERT INTO zuoye VALUES('8','陈丽花','男',20,'计算机科学系',87)

INSERT INTO zuoye VALUES('9','谢小','男',21,'数学系',35)

INSERT INTO zuoye VALUES('10','袁小','女',20,'计算机科学系',25)

INSERT INTO zuoye VALUES('11','李小龙','男',16,'建筑工程学系',98)

SELECT *FROM zuoye

--1.	查询全体学生的学号与姓名.

SELECT a.Son,a.Sname
from zuoye a

--2.	查询全体学生的姓名、学号、专业.

SELECT b.Sname,b.Son,b.Sdept
from zuoye b

--3.	查全体学生的姓名及其年龄。

SELECT c.Sname,c.sage
from zuoye c

--4.	查询“计算机科学”专业全体学生的名单。

SELECT *
from zuoye d
WHERE d.Sdept='计算机科学系'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。

SELECT *
FROM zuoye e
where e.Sage<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。

SELECT f.sname,f.sage ,f.Grade
from zuoye f
WHERE f.sage<18
ORDER BY f.Grade DESC 

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。

SELECT g.Son
from zuoye g
WHERE g.Son<60
ORDER BY g.Son DESC

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。

SELECT h.Sname,h.Sdept,h.Sage
from zuoye h
WHERE h.Sage>=18 AND h.Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。

SELECT i.Sname,i.Sdept,i.Sage
from zuoye i
WHERE i.Sage<20

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。

SELECT q.sname,q.ssex
FROM zuoye q
where q.sdept='信息系' OR q.sdept ='数学系' OR q.sdept='计算机科学系'


--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。

SELECT w.Sname,w.Ssex
from zuoye w
where NOT (w.Sdept='信息系'OR w.Sdept='数学系' OR w.Sdept='计算机科学系')

--12.	查询学号为09102040203的学生的详细情况。

SELECT p.Son
from zuoye p
WHERE 

--13.	查询所有姓“张”学生的姓名、学号和性别。

SELECT t.sname,t.Son,t.ssex
from zuoye t
WHERE t.sname LIKE '张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。

SELECT n.sname
from zuoye n
WHERE n.sname LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。

SELECT o.sname,o.Son 
from zuoye o
WHERE o.sname LIKE '_丽%'

--16.	查询所有不姓“陈”的学生姓名。

SELECT u.sname
from zuoye u
WHERE u.sname NOT  LIKE '陈%'

