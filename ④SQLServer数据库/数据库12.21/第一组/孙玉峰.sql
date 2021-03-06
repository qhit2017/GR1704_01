SELECT *FROM student
--查询男生和女生的人数。
SELECT a.ssex,COUNT(*)as'人数'
from student a
GROUP by a.ssex

--查询“计算机”专业未成年学生的平均成绩和专业名。
SELECT  b.Sdept, avg(c.grade)as'平均成绩'
from student b
GROUP by b.Sdept


--查询每个专业中成绩最好的学生成绩。
SELECT MAX(c.Grade)
from student c
GROUP BY c.Sdept

--查询缺少成绩的学生的学号和姓名。
SELECT d.sno,d.sname
from student d
WHERE d.Grade is null  

--查询学生总人数。
SELECT COUNT(*)as '总数'
from student e

