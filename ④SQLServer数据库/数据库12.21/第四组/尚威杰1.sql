SELECT * FROM studentinfo

--1.	查询每个民族内学生的平均成绩。
SELECT a.class, AVG(a.score) as '成绩'
from studentinfo a
GROUP BY a.score,a.class 
--2.	查所有有成绩的学生的学号和姓名。
SELECT b.score,b.name,b.id
from studentinfo b
--3.	查询男生和女生的人数。
SELECT c.sex, count(*)as '人数'
from studentinfo c
GROUP BY c.sex
--4.	查询学生总人数。
SELECT  COUNT(d.name) as '总人数'
from studentinfo d
--5.	查询每个民族中成绩最好的学生成绩。
SELECT e.nation ,max (e.score)
from studentinfo e
group BY e.nation
--6.	查询每个民族中成绩最差的学生成绩。
SELECT q.nation,MIN(q.score)as '成绩'
from studentinfo q
group BY q.nation
--7.	查询平均成绩最差的民族的名字。
SELECT  MIN(w.nation) as '民族名字'
from studentinfo w
--8.	查询男生和女生的平均成绩。
SELECT c.sex,AVG(c.score)as '平均成绩'
from studentinfo c
group BY c.sex

--9.	查询缺少成绩的学生的学号和姓名。
SELECT o.id,o.name
from studentinfo o
where o.score IS NULL



