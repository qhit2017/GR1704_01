--1、查询全体学生的学号与姓名。
SELECT c.cno,sq.sname
from Course c INNER JOIN  sc s ON c.cno=s.cno 
 INNER JOIN  student sq ON sq.sno= s.sno
--2、查询全体学生的姓名、学号、所在系。
SELECT sq.sname,sq.sno,sq.sdept
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student sq ON sq.sno=s.sno
SELECT*FROM Course
SELECT*FROM sc
SELECT*FROM student
--3、查全体学生的姓名及其出生年份。
SELECT se.sname,YEAR(GETDATE())-se.sage
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student se ON se.sno=s.sno

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT DISTINCT s.sno
from Course c INNER JOIN sc s ON c.cno=s.cno
 INNER JOIN student sq ON sq.sno=s.sno
	  AND  c.cname='语文'OR
	  c.cname='数学'OR
	  c.cname='思修'OR
	  c.cname='英语'
--5、查询计算机科学系全体学生的名单。
SELECT  *
from Course c INNER JOIN sc s ON c.cno =s.cno
 INNER JOIN student sq ON s.sno=sq.sno
 AND sq.sdept='建筑系'

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.sname,s.sage
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
  AND s.sage<20 

--7、查询考试成绩有不及格的学生的学号。

SELECT s.sno,s.sname
from Course c INNER JOIN sc sc ON c.cno =sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND sc.Grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.sname,s.sage,s.sdept
from Course c INNER JOIN sc sc ON c.cno= sc.cno
 INNER JOIN student s ON s.sno = sc.sno
 AND s.sage IN (18,22)
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.sname,s.sage,s.sdept
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno =sc.sno
  AND s.sage NOT IN(20,23)

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT  s.sname,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno = sc.sno 
 AND s.sdept IN ('is','ma','cs')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT s.sname,s.ssex
from Course c INNER JOIN sc sc ON c.cno =sc.cno 
 INNER JOIN student s ON s.sno=sc.sno
  AND s.sdept NOT IN('is','ma','cs')

--12、查询学号为200215121的学生的详细情况。
SELECT *
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sno='200215121'
 

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT s.sname,s.sno ,s.ssex
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname LIKE '_刘%'

--16、查询所有不姓“陈”的学生姓名。
SELECT s.sname
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND s.sname not LIKE '陈%'


--17、查询DB_Design课程的课程号和学分。
SELECT c.Ccredit,sc.Grade
from Course c INNER JOIN sc sc ON c.cno=sc.cno
 INNER JOIN student s ON s.sno=sc.sno
 AND c.cname='pascal语言'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT *
from Course c INNER JOIN sc sc ON sc.cno=c.cno
 LEFT JOIN student s ON s.sno=sc.sno
 
--19、查所有有成绩的学生学号和课程号。

--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。

--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。

--22、	查询学生总人数。

--23、	查询选修了数学课程的学生人数。

--24、	计算1号课程的学生平均成绩。

--25、	查询选修1号课程的学生最高分数。

--26、	查询学号为200215121的学生选修课程的总学分数。

--27、	求各个课程号及相应的选课人数。

--28、	查询选修了3门以上课程的学生学号。
