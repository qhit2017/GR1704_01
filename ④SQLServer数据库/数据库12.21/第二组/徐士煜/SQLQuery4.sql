SELECT * FROM student
DELETE student
INSERT INTO student VALUES(09102040203,'张三','男',16,'IT','98')
INSERT INTO student VALUES(09102040204,'李四','男',17,'IC','97')
INSERT INTO student VALUES(09102040205,'王五','男',18,'IQ','96')
INSERT INTO student VALUES(09102040206,'甲','男',19,'IE','95')
INSERT INTO student VALUES(09102040207,'乙','男',20,'IW','94')
INSERT INTO student VALUES(09102040208,'丙','男',21,'IA','93')
INSERT INTO student VALUES(09102040209,'丁','男',22,'IC','92')
INSERT INTO student VALUES(09102040201,'陈','男',23,'IV','91')
--1.	查询每个专业内学生的平均成绩。
SELECT a.Sdept,AVG(a.Grade)
from student a
GROUP BY a.Sdept,a.Grade,
--2.	查询学生总人数。
SELECT COUNT(b.Sname)
from student b
--3.	查询男生和女生的人数。
SELECT c.Ssex, COUNT(c.Ssex)
from student c
GROUP BY c.Ssex
--4.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT d.Sdept,AVG(d.Grade)
from student d
ORDER BY d.Sdept,d.Grade
--5.	查询每个专业中成绩最好的学生成绩。
SELECT e.Sdept,MAX(e.Grade),e.Sname
from student e
GROUP BY e.Sdept,e.Grade,e.Sname
--6.	查询每个专业中成绩最差的学生成绩。
SELECT f.Sdept,MIN(f.Grade),f.Sname
from student f
GROUP BY f.Sdept,f.Grade,f.Sname

