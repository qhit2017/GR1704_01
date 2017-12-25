--1.	查询全体学生的学号与姓名
 SELECT * FROM Student

--2.	查询全体学生的姓名、学号、专业
 SELECT a.Sname,a.Sno,a.Sdept
 from Student a
 
--3.	查全体学生的姓名及其年龄
 select b.Sname,b.Sage
 from Student b

--4.	查询“计算机科学”专业全体学生的名单
select *
FROM Student c
where c.Sdept='计算机科学'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄
select d.Sname,d.Sage
from Student d
WHERE d.Sage<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序
select e.Sname,e.Sage,e.Grade
from Student e
WHERE e.Sage<18
ORDER BY e.Grade

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列
select f.Sno
from Student f
where f.Grade<60
ORDER BY f.Grade

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄
select g.Sname,g.Sdept,g.Sage
from Student g
where g.Sage>=18 AND g.Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄
select h.Sname,h.Sdept,h.Sage 
from Student h
WHERE h.Sage<=20 OR h.Sage>=23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
select i.Sname,i.Ssex
from Student i
WHERE i.Sdept='信息系' OR i.Sdept='数学系' or i.Sdept='计算机科学系'

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别
select j.Sname,j.Ssex
from Student j
where j.Sdept!='信息系' and j.Sdept!='数学系' and j.Sdept!='计算机科学'

--12.	查询学号为09102040203的学生的详细情况
SELECT *
from Student k
WHERE k.Sno=09102040203

--13.	查询所有姓“张”学生的姓名、学号和性别
select l.Sname,l.Sno,l.Ssex
from Student l
where l.Sname LIKE '张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名
SELECT m.Sname
from Student m
where m.Sname LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号
SELECT n.Sname,n.Sno
from Student n
where n.Sname LIKE '_丽_'

--16.	查询所有不姓“陈”的学生姓名
select o.Sname
from Student o
where   o.Sname not like  '陈%' 
