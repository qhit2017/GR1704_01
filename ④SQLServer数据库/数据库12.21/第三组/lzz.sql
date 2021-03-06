--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.no,a.name
from student a
where grade is NULL
--2.	查询每个专业内学生的平均成绩。
SELECT a.dept,AVG(a.grade) as '平均成绩'
from student a
GROUP BY a.dept
--3.	查所有有成绩的学生的学号和姓名。
SELECT a.no,a.name
from student a
WHERE a.grade is NOT NULL
--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
select *
from student a
ORDER BY a.dept,a.age
--5.	查询学生总人数。
SELECT count(*) as '总人数'
from student 
--6.	查询男生和女生的人数。
SELECT a.sex ,count(*) as '人数'
from student a
GROUP BY a.sex
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT a.dept,AVG(a.grade)
from student a
group BY a.dept 
ORDER BY AVG(a.grade)DESC