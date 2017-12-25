--2.	查询每个专业内学生的平均成绩。
SELECT AVG(a.CJ)
from zy333 a
--3.	查所有有成绩的学生的学号和姓名。
SELECT c.CJ,c.XH,c.XM
from zy333 c
--5.	查询学生总人数。
SELECT COUNT(*)
from zy333 b
--6.	查询男生和女生的人数。
SELECT COUNT(d.XB)
from zy333 d
--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT e.ZY,AVG(e.CJ)as '平均分'
from zy333 e
group by e.CJ 
order by e.CJ desc
