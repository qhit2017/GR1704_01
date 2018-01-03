SELECT *FROM 学生表 

SELECT  *FROM 课程表

SELECT *FROM 学生选课表

--1、查询全体学生的学号与姓名。
SELECT a.sno,a.sname
from 学生表 a

--2、查询全体学生的姓名、学号、所在系。
SELECT w.sname,w.sno,w.sdept
from 学生表 w

--3、查全体学生的姓名及其出生年份。
SELECT e.sname(2015-e.sage) 
from 学生表 e 

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT r.sno
from 学生选课表 r
WHERE r.cno IN NOT  NULL

--5、查询计算机科学系全体学生的名单。
SELECT *
from 学生表 
WHERE sdept='as'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT t.sname,t.sage
from 学生表 t
WHERE  t.sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT crade
from 学生选课表
WHERE   crade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT y.sname,y.sdept,y.sage
from 学生表 y
WHERE y.sage BETWEEN 18 AND 22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT u.sname,u.sdept,u.sage
from 学生表 u
WHERE u.sage NOT BETWEEN 18 AND 22
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT i.sname ,i.ssex 
from 学生表 i
WHERE i.sdept IN ('cs','ml','xc')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT p.sname ,p.sage
from 学生表 p
WHERE p.sdept NOT IN ('tr','yu','zn')


