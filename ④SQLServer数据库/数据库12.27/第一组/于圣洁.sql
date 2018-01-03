


--1、查询全体学生的学号与姓名。
SELECT Sno,Sname
from Student

--2、查询全体学生的姓名、学号、所在系。
SELECT Sname,Sno,Sdept
from Student

--3、查全体学生的姓名及其出生年份???。
SELECT Sname
from Student

--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.Sno
from Student s LEFT JOIN SC sc ON s.Sno=sc.Sno
AND sc.Cno IS NOT NULL

--5、查询计算机科学系全体学生的名单。
SELECT *
from Student
WHERE Sdept='cs'
 

--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT Sname,Sage
from Student
WHERE Sage<20

--7、查询考试成绩有不及格的学生的学号。
SELECT s.Sno
from Student s INNER JOIN SC sc
ON s.Sno=sc.Sno
AND sc.Grade<60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT Sname,Sdept,Sage
from Student
WHERE Sage BETWEEN 18 AND 22

--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT Sname,Sdept,Sage
from Student
WHERE Sage NOT BETWEEN 20 AND 23

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT Sname,Ssex
from Student
WHERE Sdept IN('IS','MA','CS')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT Sname,Ssex
from Student
WHERE Sdept NOT IN('IS','MA','CS')

--12、查询学号为09102040203的学生的详细情况。
SELECT *
from Student
WHERE Sno='09102040203'

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT Sname,Sno,Ssex
from Student
WHERE Sname LIKE'张%'

--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT Sname
from Student
WHERE Sname LIKE'李__'

--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT Sname,Sno
from Student
WHERE Sname LIKE'_丽%'

--16、查询所有不姓“陈”的学生姓名。
SELECT Sname
from Student
WHERE Sname NOT LIKE'陈%'

--17、查询DB_Design课程的课程号和学分。
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'

--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT Sno,Cno
from SC
WHERE Grade IS NULL

--19、查所有有成绩的学生学号和课程号。
SELECT Sno,Cno
from SC
WHERE Grade IS NOT NULL



--21、查询全体学生情况，查询结果按所在系号(???)升序排列，同一系(???)中的学生按年龄降序排列。
SELECT *
FROM Student
ORDER BY Sage DESC

--22、查询学生总人数。
SELECT COUNT(*) AS '总人数'
FROM Student

--23、查询选修了数学课程的学生人数。
SELECT COUNT(*)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
and c.Cname='数学'

--24、计算1号课程的学生平均成绩。
SELECT AVG(Grade)
from SC
WHERE Cno=1

--25、查询选修1号课程的学生最高分数。
SELECT MAX(Grade)
from SC
WHERE Cno=1

--26、查询学号为200215121的学生选修课程的总学分数。
SELECT sum(c.Ccredit)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
AND s.Sno=200215121

--27、求各个课程号及相应的选课人数。
SELECT c.Cno,COUNT(*) as '选课人数'
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY c.Cno

--28、查询选修了3门以上课程的学生学号。
SELECT s.Sno
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY s.Sno
having COUNT(sc.Cno)>3