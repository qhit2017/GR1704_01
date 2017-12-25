SELECT *   from zuoye;

--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.xuehao,a.xingming
FROM zuoye a
WHERE a.chengji is null

--2.	查询每个专业内学生的平均成绩。
SELECT b.zuanyeming,  avg(b.chengji) as'平均成绩'
from zuoye b
 group by  b.zuanyeming
 
--3.	查所有有成绩的学生的学号和姓名。
SELECT c.chengji , c.xuehao,c.xingming
from zuoye c
WHERE  c.chengji is NOT NULL

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT *
from zuoye d
GROUP  
--5.	查询学生总人数。
select max (f.xuehao)
from zuoye f


--6.	查询男生和女生的人数。
SELECT v.xingbie,count (*) as '人数'
from zuoye v
group  by v.xingbie

--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT k.zuanyeming, AVG(k.chengji) as'平均值'
from zuoye k
group by k.zuanyeming
ORDER BY AVG(k.chengji)DESC

--8.	查询每个专业中成绩最好的学生成绩。
SELECT o.zuanyeming,MAX(o.chengji) AS'最好成绩'
from zuoye o
group BY o.zuanyeming

--9.	查询每个专业中成绩最差的学生成绩。
SELECT o.zuanyeming,MIN(o.chengji) AS'最差成绩'
from zuoye o
group BY o.zuanyeming

--10.	查询平均成绩最差的专业的名字。
SELECT  top 1 z.zuanyeming, avg (z.chengji)as'最差'
from zuoye z
GROUP BY z.zuanyeming

--11.	查询男生和女生的平均成绩。
SELECT u.xingbie ,avg (u.chengji)as'平均成绩'
from zuoye u
GROUP BY u.xingbie

--12.	查询成绩高于平均成绩的学生姓名和成绩。
SELECT m.chengji,(m.xingming,m.chengji) 
from zuoye m
GROUP BY m.chengji>avg


--13.	查询专业学生人数超过50人的专业名。
--14.	查询“计算机”专业未成年学生的平均成绩和专业名。

