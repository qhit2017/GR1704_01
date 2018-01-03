SELECT * FROM Student
SELECT * FROM Course
SELECT * FROM SC



--1、查询全体学生的学号与姓名。
SELECT s.Sno,a.Sname
from Course c INNER JOIN SC s ON c.Cno =s.Cno
INNER JOIN Student a on s.Sno = a.Sno


--2、查询全体学生的姓名、学号、所在系。
SELECT s.Sname ,s.Sno,s.Sdept
from Student s INNER JOIN SC a ON s.Sno = a.Sno
INNER JOIN Course c ON a.Cno = c.Cno

--3、查全体学生的姓名及其出生年份。
SELECT s.Sname,2017-s.Sage
from Student s INNER JOIN SC a ON s.Sno = a.Sno 
INNER JOIN Course c ON a.Cno = c.Cno

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT DISTINCT s.Sno
 from Course c INNER JOIN SC a ON c.Cno = a.Cno 
 INNER JOIN Student s ON a.Sno = s.Sno 
 AND c.CName ='语文' OR
     c.CName = '思修' OR
     c.CName = '英语'

--5、查询计算机科学系全体学生的名单。
SELECT *
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno
AND s.Sdept ='建筑系'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.Sname,s.Sage
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage <20


--7、查询考试成绩有不及格的学生的学号。
SELECT s.Sno
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND a.Grade <60


--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.Sname,s.Sdept,s.Sage
from Course c INNER JOIN SC a ON c.Cno = a.Cno
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage IN (18,22)

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.Sname,s.Sdept,s.Sage
from Course c INNER JOIN SC a ON c.Cno = a.Cno
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sage NOT IN (20,23)


--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT s.Sname,s.Ssex
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sdept IN ('信息系','数学系','计算机科学系') 


--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT s.Sname,s.Ssex
from Course c INNER JOIN SC a ON c.Cno =a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sdept NOT IN ('信息系','数学系','计算机科学系')

--12、查询学号为09102040203的学生的详细情况。
SELECT DISTINCT *
from Course c INNER JOIN SC a ON c.Cno = a.Cno 
INNER JOIN Student s ON a.Sno = s.Sno 
AND s.Sno ='2002151220'

--13、查询所有姓“张”学生的姓名、学号和性别
SELECT a.Sname ,a.Sno ,a.Ssex
from Course c INNER JOIN SC s ON c.Cno = s.Cno
INNER JOIN Student a ON s.Sno = a.Sno 
AND a.Sname LIKE '张%'


--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.Sname
from Course c INNER JOIN SC s ON c.Cno = s.Cno
INNER JOIN Student a ON s.Sno = a.Sno 
AND a.Sname LIKE '申__'