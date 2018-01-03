--1、查询全体学生的学号与姓名。
select a.sno,a.sname
from Student a

--2、查询全体学生的姓名、学号、所在系。
select b.sno,b.sname,b.sdept
from Student b
--3、查全体学生的姓名及其出生年份。
select *,2017-sage
from Student

--4、查询选修了课程的学生学号（即有选修记录）。
select c.sno
from sc c
where c.cno is not null

--5、查询计算机科学系全体学生的名单。
select *
from Student d
where d.sdept='cs'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
select e.sname,e.sage
from Student e
where e.sage<20

--7、查询考试成绩有不及格的学生的学号。
select f.sno
from sc f
where f.grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
select g.sname,g.sdept,g.sage
from Student g
where g.sage>=18and g.sage<=22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
select g.sname,g.sdept,g.sage
from Student g
where g.sage<20 or g.sage>23
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select h.sname,h.ssex,h.sdept
from Student h
where h.sdept in('is','ma','cs')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select i.sname,i.ssex,i.sdept
from Student i
where i.sdept not in  ('is','ma','cs')

--12、查询学号为200215136的学生的详细情况。
select *
from Student j
where j.sno='200215136'

--13、查询所有姓“张”学生的姓名、学号和性别。
select k.sname,k.sno,k.ssex
from Student k
where k.sname like '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
select k.sname
from Student k
where k.sname like '张__'

--15、查询名字中第2个字为“子”字的学生的姓名和学号。
select l.sname,l.sno
from Student l
where l.sname like'_子_'