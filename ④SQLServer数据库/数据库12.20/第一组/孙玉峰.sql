--1.查询全体学生的学号与姓名。
SELECT a.sno, a.sname
from Student a
--2.查询全体学生的姓名、学号、专业。
SELECT q.sname,q.sno,s.Sdept
from Student q 
--3.查全体学生的姓名及其年龄。
SELECT d.sname,d.Sage
from Student d
--4.查询“计算机科学”专业全体学生的名单。
SELECT*
from Student x
WHERE x.Sdept='计算机科学'
--5.查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT k.sname,k.Sage
FROM Student k
where k.Sage<20
--6.查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT k.sname,k.Sage,k.Grade
from Student k
WHERE k.Sage<18
SELECT*FROM Student g 
ORDER by g.Grade
--7.查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT j.sno
from Student j
WHERE j.Grade<60
SELECT*FROM Student h
ORDER by h.sno
--8.查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT b.sname,b.Sage,b.Sdept
from Student b
WHERE b.Sage>=18 AND b.Sage<23
--9.查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT b.sname,b.Sage,b.Sdept
from Student b
WHERE b.Sage<20 AND b.Sage>23
--10.查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT l.sname,l.Sage,l.Sdept
from Student l
WHERE l.Sdept='信息系' or l.Sdept='数学系'and l.Sdept='计算机科学系'
--11.查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT l.sname,l.Sage,l.Sdept
from Student l
WHERE l.Sdept!='信息系'or l.Sdept!='数学系'and l.Sdept='计算机科学系'
--12.查询学号为09102040203的学生的详细情况。
SELECT j.sno,j.sname,j.Ssex,j.Sage,j.Sdept,j.Grade
from Student j
WHERE j.Grade=09102040203
--13.查询所有姓“张”学生的姓名、学号和性别。
SELECT h.sno,h.sname,h.Ssex
from Student h
WHERE  h.sname LIKE '张%'
--14.查询姓“李”且全名为三个汉字的学生的姓名。
SELECT j.sname
from Student j
WHERE  j.sname  LIKE '李__'
--15.查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT j.sname,j.sno
from Student j
WHERE  j.sname LIKE '_丽'
--16.查询所有不姓“陈”的学生姓名。
SELECT i.sno,i.sname,i.Ssex
from Student i
WHERE  i.sname NOT LIKE '陈%'