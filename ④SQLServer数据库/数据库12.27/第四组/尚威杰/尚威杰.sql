--1、查询全体学生的学号与姓名。
SELECT DISTINCT  a.Sname,a.Sno 
from Student a
--2、查询全体学生的姓名、学号、所在系。
SELECT DISTINCT  b.Sname ,b.Sno,b.Sdept 
from Student b
--3、查全体学生的姓名及其出生年份。
SELECT DISTINCT  c.Sname,2017-c.Sage 
from Student c
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT DISTINCT  b.Sno 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
--5、查询计算机科学系全体学生的名单。
SELECT *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.CName='计算机'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT DISTINCT  a.Sname ,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage<20
--7、查询考试成绩有不及格的学生的学号。
SELECT DISTINCT  a.Sno 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND b.Grade  <60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT DISTINCT a.Sname,a.Sdept,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage>18 AND a.Sage<22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.Sname,a.Sdept,a.Sage
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sage<20 AND a.Sage>23
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT DISTINCT  a.Sname,a.Ssex
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE  a.Sdept='IT'
OR  a.Sdept='CS'
OR  a.Sdept='MA'
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT DISTINCT  a.Sname ,a.Ssex
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sdept!='IT'
AND a.Sdept !='MA'
AND a.Sdept !='CS'
--12、查询学号为09102040203的学生的详细情况。
SELECT DISTINCT  *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sno='200215121'
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.Sname ,a.Sno,a.Ssex
from Student a 
WHERE a.Sname LIKE '尚%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT *
from Student a
WHERE a.Sname LIKE '尚__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.Sname ,a.Sage
from Student a 
WHERE a.Sname LIKE '_丽_'
--16、查询所有不姓“陈”的学生姓名。
SELECT *
from Student a 
WHERE a.Sname NOT  LIKE '陈%'
--17、查询DB_Design课程的课程号和学分。
SELECT c.Cno,c.Ccredit
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE a.Sname ='DB_Design'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT a.Sno,c.Cno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
WHERE NULL =b.Grade
--19、查所有有成绩的学生学号和课程号。
SELECT a.Sno,c.Cno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT a.Sno ,b.Grade 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno ='3'
ORDER BY b.Grade DESC 
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
ORDER BY a.Sdept  DESC 
--22、	查询学生总人数。
SELECT COUNT(*)  
from Student 
--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND b.Grade='数学'
--24、	计算1号课程的学生平均成绩。
SELECT AVG(b.Grade) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno='1'
--25、	查询选修1号课程的学生最高分数。
SELECT MAX(b.Grade)  
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND c.Cno='1'
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(c.Ccredit) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND a.Sno ='200215121'
--27、	求各个课程号及相应的选课人数。
SELECT COUNT(*) 
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
GROUP BY c.Cno
--28、	查询选修了3门以上课程的学生学号。
SELECT a.Sno
from Student a INNER JOIN SC b
ON a.Sno = b.Sno 
INNER JOIN Course c 
ON b.Cno=c.Cno
AND   c.Cno >3