INSERT INTO  Studentinfo values(1527,'佩斯特','女',16,'计算机科学系',90);
INSERT INTO  Studentinfo values(1528,'拉婷','女',21,'数学系',96);
INSERT INTO  Studentinfo values(1529,'威悉','男',24,'信息系',93);
INSERT INTO  Studentinfo values(15210,'李云龙','男',32,'军队',52);
INSERT INTO  Studentinfo values(15211,'张三丰','男',106,'生活与自然',100);
INSERT INTO  Studentinfo values(15212,'张角','男',42,'自然系',90);
INSERT INTO  Studentinfo values(15213,'李丽笠','女',16,'表演系',30);
INSERT INTO  Studentinfo values(15214,'缇娜','女',26,'计算机科学系',90);
INSERT INTO  Studentinfo values(15215,'温斯顿','男',16,'信息系');
INSERT INTO  Studentinfo values(15216,'安吉拉','女',30,'医学系');
INSERT INTO  Studentinfo values(09102040203,'李莉莉','女',16,'表演系');

SELECT * FROM Studentinfo


--1.	查询缺少成绩的学生的学号和姓名。
SELECT a.Sno,a.Sname
from Studentinfo a
where a.Grade IS null

--2.	查询每个专业内学生的平均成绩。

SELECT b.Sdept, AVG(b.Grade)
from Studentinfo b
group BY b.Sdept

--3.	查所有有成绩的学生的学号和姓名。

SELECT c.Sno,c.Sname
from Studentinfo c
where c.Grade is NOT null

--4.	查询全体学生情况，查询结果按所在系升序排列，同一系中的学生按年龄降序排列。

SELECT*
from Studentinfo d
ORDER BY d.Sdept ,d.Sage DESC


--5.	查询学生总人数。
SELECT COUNT(e.Sname) as'学生总人数'
from Studentinfo e

--6.	查询男生和女生的人数。
SELECT f.Ssex,COUNT(f.Ssex) as'人数'
from Studentinfo f
group BY f.Ssex

--7.	查询每个专业的平均成绩，结果按照成绩降序排列。
SELECT g.Sdept,AVG(g.Grade)
from Studentinfo g
GROUP BY g.Sdept
ORDER BY AVG(g.Grade) DESC

--8.	查询每个专业中成绩最好的学生成绩。
 SELECT h.Sdept, MAX(h.Grade) as'最高分'
 from Studentinfo h
 group BY h.Sdept
 
 --9.	查询每个专业中成绩最差的学生成绩。
 
SELECT i.Sdept, MIN(i.Grade) as'最低分'
from Studentinfo i
GROUP BY i.Sdept

--10.	查询平均成绩最差的专业的名字。

SELECT  j.Sdept,AVG(j.Grade)
from Studentinfo j
group BY j.Sdept
ORDER BY AVG(j.Grade) 

--11.	查询男生和女生的平均成绩。
SELECT k.Ssex,AVG(k.Grade) as'平均分'
from Studentinfo k
group BY k.Ssex
ORDER BY AVG(k.Grade)


--12.	查询成绩高于平均成绩的学生姓名和成绩。



--

