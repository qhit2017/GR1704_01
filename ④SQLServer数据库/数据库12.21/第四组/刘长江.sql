--1.	查询缺少成绩的学生的学号和姓名。
select a.sno,a.sname
from xueshengbiao a
WHERE a.grade IS null

--2.	查询每个专业内学生的平均成绩。
SELECT b.sdept ,AVG(b.grade)
from xueshengbiao b
GROUP BY b.sdept

--3.	查所有有成绩的学生的学号和姓名。
SELECT *
from xueshengbiao c
WHERE c.grade is Not null

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM xueshengbiao d
ORDER BY d.sdept,d.ssex DESC
 
--5.	查询学生总人数。
SELECT COUNT(e.sno) as '总人数'
from xueshengbiao e

