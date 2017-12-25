SELECT * FROM Student

--1.	查询全体学生的学号与姓名。
SELECT a.num,a.name
from Student a


--2.	查询全体学生的姓名、学号、专业。
select b.name,b.num,b.dept
FROM Student b

--3.	查全体学生的姓名及其年龄。
select c.name,c.age
from Student c

--4.	查询“计算机科学”专业全体学生的名单。
select *
from Student d
WHERE d.dept='计算机科学系'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *
FROM Student e
WHERE e.age <=20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.name,f.age, f.cj
FROM Student f
WHERE f.age <=18 ORDER BY f.cj asc
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select g.num,g.cj
from Student g
where g.cj <=60 ORDER BY g.cj desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select h.name,h.dept,h.age
from Student h
where h.age >=18 AND h.age<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select i.name,i.dept,i.age
from Student i
where i.age!=20 AND i.age!=21 AND i.age!=22 AND i.age!=23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select j.name,j.sex,j.dept
from Student j
WHERE j.dept='信息系' or j.dept='数学系' OR j.dept='计算机科学系' 

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select k.name,k.sex,k.dept
from Student k
where k.dept!='信息系' AND k.dept!='数学系' and k.dept!='计算机科学系'

--12.	查询学号为09102040203的学生的详细情况。
select *
FROM Student l
where l.sno=09102040203

--13.	查询所有姓“张”学生的姓名、学号和性别。
select m.name,m.num,m.sex
from xueshengbiao ml
where m.name LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名
select n.name
from Student n
where n.name LIKE '李__'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select o.name,o.num
from Student o
where o.name LIKE '_丽_'

--16.	查询所有不姓“陈”的学生姓名。
SELECT p.name
from Student p
where p.name!='陈%'
