SELECT * FROM Student

--1.	查询缺少成绩的学生的学号和姓名
select a.Sno,a.Sname
from Student a
where a.Grade IS NULL

--2.	查询每个专业内学生的平均成绩
SELECT b.Sdept,AVG(b.Grade) as '平均成绩'
FROM Student b
 GROUP BY b.Sdept

--3.	查所有有成绩的学生的学号和姓名
select c.Sno,c.Sname
from Student c
where c.Grade is NOT NULL

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列
select *
from Student d
 ORDER BY d.Sdept,d.Sage DESC

--5.	查询学生总人数
select COUNT(e.Sname) as '学生总人数'
from Student e

--6.	查询男生和女生的人数
select f.Ssex,COUNT(f.Ssex) '人数'
from Student f
GROUP BY f.Ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列
select g.Sdept,AVG( g.Grade)
from Student g
group BY g.Sdept 
ORDER  BY AVG( g.Grade) DESC



--8.	查询每个专业中成绩最好的学生成绩
select h.Sdept , max(h.Grade) as '最高分'
from Student h
GROUP BY h.Sdept

--9.	查询每个专业中成绩最差的学生成绩
select i.Sdept , min(i.Grade) as '最低分'
from Student i
GROUP BY i.Sdept

--10.	查询平均成绩最差的专业的名字
select TOP 1 j.Sdept,  AVG(j.Grade)
from Student j
GROUP BY j.Sdept
ORDER BY  AVG(j.Grade)

--11.	查询男生和女生的平均成绩
select k.Ssex,AVG(k.Grade) as'平均成绩'
from Student k
group BY k.Ssex

--12.	查询成绩高于平均成绩的学生姓名和成绩
select l.Sname,l.Grade, AVG(l.Grade)
from Student l

GROUP BY l.Grade
WHERE  l.Grade>AVG(l.Grade)


--13.	查询专业学生人数超过50人的专业名
select 
from Student m
group BY m.Sdept

--14.	查询“计算机”专业未成年学生的平均成绩和专业名
select z.Sdept, AVG(z.Grade)
from Student z
WHERE z.Sage<18 and z.Sdept='计算机科学'


