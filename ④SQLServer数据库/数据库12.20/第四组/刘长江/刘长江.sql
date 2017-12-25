SELECT * FROM Student

--1.	查询全体学生的学号与姓名。
SELECT z.sno,z.Sname
from xueshengbiao z


--2.	查询全体学生的姓名、学号、专业。
select a.Sname,a.sno,a.Sdept
FROM xueshengbiao a

--3.	查全体学生的姓名及其年龄。
select b.Sname,b.Sage
from xueshengbiao b

--4.	查询“计算机科学”专业全体学生的名单。
select *
from xueshengbiao c
WHERE c.Sdept='计算机科学系'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *
FROM xueshengbiao d
WHERE d.Sage <=20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT e.Sname,e.Sage, e.cj
FROM xueshengbiao e
WHERE e.Sage <=18 ORDER BY e.cj asc
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select f.sno,f.cj
from xueshengbiao f
where f.cj <=60 ORDER BY f.cj desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select g.Sname,g.Sdept,g.Sage
from xueshengbiao g
where g.Sage >=18 AND g.Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select h.Sname,h.Sdept,h.Sage
from xueshengbiao h
where h.Sage!=20 AND h.Sage!=21 AND h.Sage!=22 AND h.Sage!=23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select i.Sname,i.Ssex,i.Sdept
from xueshengbiao i
WHERE i.Sdept='信息系' or i.Sdept='数学系' OR i.Sdept='计算机科学系' 

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select j.Sname,j.Ssex,j.Sdept
from xueshengbiao j
where j.Sdept!='信息系' AND j.Sdept!='数学系' and j.Sdept!='计算机科学系'

--12.	查询学号为09102040203的学生的详细情况。
select *
FROM xueshengbiao k
where k.sno=09102040203

--13.	查询所有姓“张”学生的姓名、学号和性别。
select l.Sname,l.sno,l.Ssex
from xueshengbiao l
where l.Sname LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名
select m.Sname
from xueshengbiao m
where m.Sname LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select n.Sname,n.sno
from xueshengbiao n
where n.Sname LIKE '_丽_'

--16.	查询所有不姓“陈”的学生姓名。
SELECT o.Sname
from xueshengbiao o
where o.Sname!='陈%'
