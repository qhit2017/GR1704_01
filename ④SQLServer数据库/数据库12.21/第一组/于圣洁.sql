select * from studenta
insert into studenta(sid ,sname ,ssex ,sdept ) values (11,'名十一','男','美术')
--1.	查询缺少成绩的学生的学号和姓名。
select a.sid ,a.sname 
from studenta a 
where a.grade is null
--2.	查询每个专业内学生的平均成绩。
select b.sdept, avg(b.grade   )as '平均分'
from studenta b
group by b.sdept
--3.	查所有有成绩的学生的学号和姓名。
select  c.sid ,c.sname 
from studenta c
where c.grade  is not null
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
select *
from studenta d

order by d.sdept asc ,d.sage desc

--5.	查询学生总人数。
select  max (e.sid   )
from studenta e

--6.	查询男生和女生的人数。
select f.ssex , COUNT (f.sname ) as'人数'
from studenta f
group by f.ssex 


--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
select g.sdept ,avg (g.grade )as'平均成绩'
from studenta g
group by g.sdept 
order by avg(g.grade )desc

--8.	查询每个专业中成绩最好的学生成绩。
select h.sdept as'专业',MAX(h.grade )as'最好成绩'
from studenta h
group by h.sdept 
--9.	查询每个专业中成绩最差的学生成绩。
select i.sdept as'专业',min(i.grade)as'最差成绩'
from studenta i
group by i.sdept 
--10.	查询平均成绩最差的专业的名字。
select  top 1 min (j.sdept) as'最差专业'
from studenta j
order by AVG(j.grade )asc
--11.	查询男生和女生的平均成绩。
select k.ssex ,AVG(k.grade )as'平均成绩'
from studenta k
group by k.ssex 
--12.	查询成绩高于平均成绩的学生姓名和成绩。
select l.sname ,l.grade ,AVG (l.grade )
from studenta l
where l.grade >AVG(l.grade )
--13.	查询专业学生人数超过50人的专业名。
--14.	查询“计算机”专业未成年学生的平均成绩和专业名。

