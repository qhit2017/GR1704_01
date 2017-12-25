SELECT *FROM xinxi
--1.	查询缺少成绩的学生的学号和姓名。

SELECT d.xuehao, d.xingming
from xinxi d
where d.chengji is null



--2.	查询每个专业内学生的平均成绩。
SELECT   a.zhuanye, AVG(a.chengji)AS'平均分'
from  xinxi a
GROUP BY a.zhuanye




--3.	查所有有成绩的学生的学号和姓名。
SELECT b.xuehao,b.xingming
from xinxi b
WHERE b.chengji is NOT NULL


--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
SELECT*
from xinxi c
ORDER BY c.zhuanye ASC ,c.nianling desc






--5.	查询学生总人数。
SELECT COUNT(e.xuehao)as'总人数'
from xinxi e





--6.	查询男生和女生的人数。
SELECT f.xingbie,  COUNT(f.xingbie)
from xinxi f
GROUP BY f.xingbie


--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT  g.zhuanye,  AVG(g.chengji)as'平均成绩'
from xinxi g
GROUP BY g.zhuanye,g.chengji
ORDER BY g.chengji DESC



--8.	查询每个专业中成绩最好的学生成绩。
SELECT  h.zhuanye , MAX(h.chengji)
from xinxi h
GROUP BY h.zhuanye


--9.	查询每个专业中成绩最差的学生成绩。

SELECT  j.zhuanye , MIN(j.chengji)
from xinxi j
GROUP BY j.zhuanye



--10.	查询平均成绩最差的专业的名字。
SELECT k.zhuanye   ,MIN(k.chengji)as'平均成绩'
from xinxi k
GROUP BY k.zhuanye


--11.	查询男生和女生的平均成绩。
SELECT l.xingbie,AVG(l.chengji)as'平均成绩'
from xinxi l
group BY l.xingbie


--12.	查询成绩高于平均成绩的学生姓名和成绩。




--13.	查询专业学生人数超过50人的专业名。




--14.	查询“计算机”专业未成年学生的平均成绩和专业名。



