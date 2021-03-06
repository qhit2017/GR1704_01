INSERT INTO  Student values(1527,'佩斯特','女',16,'计算机科学系',90);
INSERT INTO  Student values(1528,'拉婷','女',21,'数学系',96);
INSERT INTO  Student values(1529,'威悉','男',24,'信息系',93);
INSERT INTO  Student values(15210,'李云龙','男',32,'军队',52);
INSERT INTO  Student values(15211,'张三丰','男',106,'生活与自然',100);
INSERT INTO  Student values(15212,'张角','男',42,'自然系',90);
INSERT INTO  Student values(15213,'李丽笠','女',16,'表演系',30);
INSERT INTO  Student values(15214,'缇娜','女',26,'计算机科学系',90);
INSERT INTO  Student values(15215,'温斯顿','男',16,'信息系',100);
INSERT INTO  Student values(15216,'安吉拉','女',30,'医学系',100);
INSERT INTO  Student values(09102040203,'李莉莉','女',16,'表演系',30);

SELECT * FROM Student

--1.	查询全体学生的学号与姓名。
SELECT z.sno,z.Sname
from Student z


--2.	查询全体学生的姓名、学号、专业。
select a.Sname,a.sno,a.Sdept
FROM Student a

--3.	查全体学生的姓名及其年龄。
select b.Sname,b.Sage
from Student b

--4.	查询“计算机科学”专业全体学生的名单。
select *
from Student c
WHERE c.Sdept='计算机科学系'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *
FROM Student d
WHERE d.Sage <=20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT e.Sname,e.Sage, e.Grade
FROM Student e
WHERE e.Sage <=18 ORDER BY e.Grade asc
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select f.sno,f.Grade
from Student f
where f.Grade <=60 ORDER BY f.Grade desc

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select g.Sname,g.Sdept,g.Sage
from Student g
where g.Sage >=18 AND g.Sage<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select h.Sname,h.Sdept,h.Sage
from Student h
where h.Sage!=20 AND h.Sage!=21 AND h.Sage!=22 AND h.Sage!=23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
select i.Sname,i.Ssex,i.Sdept
from Student i
WHERE i.Sdept='信息系' or i.Sdept='数学系' OR i.Sdept='计算机科学系' 

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
select j.Sname,j.Ssex,j.Sdept
from Student j
where j.Sdept!='信息系' AND j.Sdept!='数学系' and j.Sdept!='计算机科学系'

--12.	查询学号为09102040203的学生的详细情况。
select *
FROM Student k
where k.sno=09102040203

--13.	查询所有姓“张”学生的姓名、学号和性别。
select l.Sname,l.sno,l.Ssex
from Student l
where l.Sname LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名
select m.Sname
from Student m
where m.Sname LIKE '李%%'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
select n.Sname,n.sno
from Student n
where n.Sname LIKE '%丽%'

--16.	查询所有不姓“陈”的学生姓名。
SELECT o.Sname
from Student o
where o.Sname!='陈%'

