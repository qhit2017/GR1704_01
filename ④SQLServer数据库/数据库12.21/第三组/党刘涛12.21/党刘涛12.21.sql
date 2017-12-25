--查询所有学生
SELECT * FROM student
--删除所有学生
--DELETE FROM student
--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.sno as '学号',a.sname AS '姓名'
from student a
WHERE a.grade is NULL
--2.	查询每个专业内学生的平均成绩。
SELECT b.sdept AS '专业' ,AVG(b.grade)as '平均分'
 from	student b
 GROUP BY b.sdept 
 --3.	查所有有成绩的学生的学号和姓名。
 SELECT	c.sno,c.sname
 from	student c
 WHERE c.grade>0
 --4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。
	
 SELECT * 
 from	student e
 
 ORDER BY e.sdept ASC,e.sage DESC
 --5.	查询学生总人数。
 SELECT COUNT(e.sname)
 from	student e
 --6.	查询男生和女生的人数。
 SELECT l.ssex, COUNT(l.ssex)
 from student l
 GROUP BY l.ssex
 --7.	查询每个专业的平均成绩，结果按照成绩降序排列。
 SELECT	o.sdept,AVG(o.grade)
 from student o
  GROUP BY o.sdept
  ORDER BY AVG(o.grade)DESC
  --8.	查询每个专业中成绩最好的学生成绩。
  SELECT f.sdept,MAX(f.grade)
  from student f
  GROUP BY f.sdept
--9.	查询每个专业中成绩最差的学生成绩。
SELECT q.sdept,MIN(q.grade)
from student q
 GROUP BY q.sdept
--10.	查询平均成绩最差的专业
SELECT TOP 1 m.sdept
from	student m
 GROUP BY m.sdept 
 ORDER BY AVG(m.grade)
--11.	查询男生和女生的平均成绩。
SELECT s.ssex,AVG(s.grade)
from student s
 GROUP BY s.ssex
 --12.	查询成绩高于平均成绩的学生姓名和成绩。
 SELECT t.sname,t.grade
 from student t
 WHERE t.grade>(SELECT AVG(grade) from student)

 --13.	查询专业学生人数超过50人的专业名。
 SELECT v.sdept
 from student v
  GROUP BY v.sdept
  HAVING COUNT(v.sno)>2
  --14.	查询“计算机”专业未成年学生的平均成绩和专业名。
  SELECT r.sdept, AVG(r.grade)
  from student r
   WHERE r.sdept ='计算机'AND r.sage<18

  
  