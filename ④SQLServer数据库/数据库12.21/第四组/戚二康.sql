--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.id,a.name
from studentinfo a 
WHERE a.score IS NULL
--2.	查询每个专业内学生的平均成绩。
SELECT a.sdept, AVG(a.score)
from studentinfo a
GROUP BY a.sdept
--3.	查所有有成绩的学生的学号和姓名。
SELECT a.id,a.name
from studentinfo a
WHERE a.score IS NOT NULL
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from studentinfo a
 ORDER BY a.score DESC,a.sdept
--5.	查询学生总人数。
SELECT COUNT(e.id) AS '人数'
from studentinfo a
--6.	查询男生和女生的人数。
SELECT a.sex, COUNT(a.id)
from studentinfo a 
GROUP BY a.sex