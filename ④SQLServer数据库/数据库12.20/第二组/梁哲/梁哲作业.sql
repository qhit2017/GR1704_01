--1.	查询全体学生的学号与姓名。
SELECT a.Sno,a.Sname
from Student a
--2.	查询全体学生的姓名、学号、专业。
SELECT b.Sname,b.Sno,b.Sdept
from Student b
--3.	查全体学生的姓名及其年龄。
SELECT c.Sname,c.Sage
from Student c
--4.	查询“计算机科学”专业全体学生的名单。
SELECT *
from Student d
WHERE d.Sdept='计算机科学系'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT e.Sname,e.Sage
from Student e
WHERE e.Sage<=20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
SELECT f.Sname,f.Sage,f.Grade
from Student f
WHERE f.Sage<18 ORDER BY f.Grade
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT b.Sno
from Student b
where b.Grade<60ORDER BY b.Grade DESC
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT l.Sname,l.Sdept,l.Sage
from Student l
WHERE l.Sage >=18 AND l.Sage<=22
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT q.Sname,q.Sdept,q.Sage
from Student q
WHERE q.Sage<20OR q.Sage>23
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT k.Sdept,k.Sname,k.Ssex
from Student k
WHERE k.Sdept='信息系' or k.Sdept='数学系' or k.Sdept='计算机科学系'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT xc.Sdept,xc.Sname,xc.Ssex
from Student xc
WHERE xc.Sdept!='信息系'AND xc.Sdept!='数学系'AND xc.Sdept!='计算机科学系'
--12.	查询学号为09102040203的学生的详细情况。
SELECT ds.Sno,ds.Sname,ds.Ssex,ds.Sage,ds.Sdept,ds.Grade
from Student ds
WHERE ds.Sno='09102040203'
--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT qs.Sname,qs.Sno,qs.Ssex
from Student qs
WHERE qs.Sname LIKE'张%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT z.Sname
from Student z
WHERE z.Sname LIKE '李__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT v.Sname,v.Sno
from Student v
WHERE v.Sname LIKE'%丽%'
--16.	查询所有不姓“陈”的学生姓名。.
SELECT n.Sname
from Student n
WHERE n.Sname NOT LIKE'陈'









