--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.Sno,a.Sname
from Student a
WHERE a.Grade IS NULL
--2.	查询每个专业内学生的平均成绩。
SELECT  b.Sdept,avg(b.Grade)AS '平均成绩'
from Student b
GROUP BY b.Sdept
--3.	查所有有成绩的学生的学号和姓名。
SELECT c.Sno,c.Sname
from Student c
WHERE c.Grade IS not NULL 
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT*
from Student d
ORDER BY d.Sdept,d.Sage DESC
--5.	查询学生总人数。
SELECT COUNT(e.Sno)AS'总人数'
from Student e
--6.	查询男生和女生的人数。
SELECT q.Ssex,COUNT(q.Ssex) as'男生女生人数'
from Student q
GROUP BY q.Ssex
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT r.Sdept,AVG(r.Grade)
from Student r
GROUP BY r.Sdept
ORDER BY AVG(r.Grade)  DESC

