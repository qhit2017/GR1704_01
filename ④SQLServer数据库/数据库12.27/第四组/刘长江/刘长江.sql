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
where f.greade<60

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

--16、查询所有不姓“陈”的学生姓名。
select m.sname
from Student m
where m.sname not like '陈%'

--17、查询'信息系统'课程的课程号和学分。
select n.cno,n.ccredit
from Course n
where n.cname='信息系统'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
select o.cno
from sc o
where o.greade is null
--19、查所有有成绩的学生学号和课程号。
select p.sno,p.cno
from sc p
where p.greade is not null

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
select q.sno,q.greade
from sc q
where q.cno=3
order by q.greade desc
--21、查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
select *
from Student r
order by r.sno, r.sdept , r.sage desc

--22、查询学生总人数。
select COUNT(*)as'总人数'
from Student

--23、查询选修了数学课程的学生人数。

select COUNT(*)as'选修数学课程人数'
from sc t
where t.cno=(select s.cno
from Course s
where s.cname='数学')
--24、计算1号课程的学生平均成绩。
select AVG(u.greade)as'1号课程平均分'
from sc u
where u.cno=1

--25、查询选修1号课程的学生最高分数。
select MAX(v.greade)as'1号课程最高分'
from sc v
where v.cno=1
--26、查询学号为200215121的学生选修课程的总学分数
select SUM(w.greade)
from sc w
where w.sno=200215121

--27、求各个课程号及相应的选课人数。
select x.cno,COUNT(*)as'选课人数'
from sc x
group by x.cno
--28、查询选修了3门以上课程的学生学号。
select count (y.cno),y.sno
from sc y
group by y.sno
having count (y.cno)>=3
