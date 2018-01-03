INSERT INTO Student VALUES(200215121,'李勇','男',20,'CS')
INSERT INTO Student VALUES(200215122,'刘晨','女',19,'CS')
INSERT INTO Student VALUES(200215123,'王敏','女',18,'MA')
INSERT INTO Student VALUES(200215124,'张立','男',19,'IS')
INSERT INTO Student VALUES(200215125,'影','男',20,'CS')
INSERT INTO Student VALUES(200215126,'冷','女',19,'CS')
INSERT INTO Student VALUES(200215127,'魅','女',18,'MA')
INSERT INTO Student VALUES(200215128,'音','男',19,'IS')
INSERT INTO Student VALUES(200215129,'蔡文姬','女',18,'MA')
INSERT INTO Student VALUES(200215130,'钟无艳','女',19,'IS')
INSERT INTO Student VALUES(200215131,'泰达米尔','男',20,'CS')
INSERT INTO Student VALUES(200215132,'易','男',19,'CS')
INSERT INTO Student VALUES(200215133,'卡特琳娜','女',18,'MA')
INSERT INTO Student VALUES(200215134,'赵信','男',19,'IS')
INSERT INTO Student VALUES(200215135,'盖伦','男',20,'CS')
INSERT INTO Student VALUES(200215136,'拉克丝','女',19,'CS')
INSERT INTO Student VALUES(200215137,'金克斯','女',18,'MA')
INSERT INTO Student VALUES(200215138,'嘉文','男',19,'IS')
INSERT INTO Student VALUES(200215139,'安妮','女',18,'MA')
INSERT INTO Student VALUES(200215140,'武则天','女',19,'IS')
INSERT INTO Student VALUES(200215141,'狄仁杰','男',20,'CS')
INSERT INTO Student VALUES(200215142,'努努','女',19,'CS')
INSERT INTO Student VALUES(200215143,'索菲亚','女',18,'MA')
INSERT INTO Student VALUES(200215144,'孙悟空','男',19,'IS')
INSERT INTO Student VALUES(200215145,'德莱厄斯','男',20,'CS')
INSERT INTO Student VALUES(09102040203,'兮','男',20,'CS')

INSERT INTO Course VALUES(1,'数据库',4)
INSERT INTO Course VALUES(2,'数学',2)
INSERT INTO Course VALUES(3,'信息系统',4)
INSERT INTO Course VALUES(4,'操作系统',2)
INSERT INTO Course VALUES(5,'数据结构',2)
INSERT INTO Course VALUES(6,'数据处理',4)
INSERT INTO Course VALUES(7,'PASCAL语言',3)
INSERT INTO Course VALUES(8,'物理',5)
INSERT INTO Course VALUES(9,'化学',2)

INSERT INTO SC VALUES(200215121,1,92)
INSERT INTO SC VALUES(200215121,2,82)
INSERT INTO SC VALUES(200215121,3,55)
INSERT INTO SC VALUES(200215122,2,58)
INSERT INTO SC VALUES(200215122,1,60)
INSERT INTO SC VALUES(200215127,6,84)
INSERT INTO SC VALUES(200215126,7,71)
INSERT INTO SC VALUES(200215125,9,76)
INSERT INTO SC VALUES(200215140,8,75)
INSERT INTO SC VALUES(200215143,1,51)
INSERT INTO SC VALUES(200215131,9,77)
INSERT INTO SC VALUES(200215131,3,71)
INSERT INTO SC VALUES(200215137,6,15)
INSERT INTO SC VALUES(200215144,2,59)
INSERT INTO SC VALUES(200215126,1,60)
INSERT INTO SC VALUES(200215129,1,84)
INSERT INTO SC VALUES(200215135,9,71)
INSERT INTO SC VALUES(200215140,9,76)
INSERT INTO SC VALUES(200215140,5,75)
INSERT INTO SC VALUES(200215141,4,51)
INSERT INTO SC VALUES(20021532,1,84)
INSERT INTO SC VALUES(200215135,9,71)
INSERT INTO SC VALUES(200215121,9,76)
INSERT INTO SC VALUES(200215129,5,75)
INSERT INTO SC VALUES(200215127,4,51)

--1、查询全体学生的学号与姓名。
SELECT s.Sno,s.Sname
from Student s 
--2、查询全体学生的姓名、学号、所在系。
SELECT s.Sno,s.Sname,s.Sdept
from Student s 
--3、查全体学生的姓名及其出生年份。
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT s.Sno,s.Cno
from SC s
WHERE s.Cno IS NOT  NULL
--5、查询计算机科学系全体学生的名单。
SELECT*
from Student s
WHERE s.Sdept='is'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.Sname,s.Sage
from Student s
WHERE s.Sage<20
--7、查询考试成绩有不及格的学生的学号。
SELECT s.Sno
from SC s
WHERE s.Grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.Sname,s.Sdept,s.Sage
from Student s
WHERE s.Sage BETWEEN 18 AND 22  
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.Sname,s.Sdept,s.Sage
from Student s
WHERE s.Sage NOT BETWEEN 18 AND 22
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT s.Sname,s.Ssex
from Student s
WHERE s.Sdept IN('IS','MA','CS')
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT  s.Sname,s.Ssex
FROM Student S
WHERE S.Sdept NOT IN('IS','MA','CS')
--12、查询学号为09102040203的学生的详细情况。
SELECT*
FROM Student S
WHERE S.Sno LIKE'09102040203'
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT S.Sname,s.Sno,s.Ssex
FROM Student S
WHERE S.Sname LIKE'张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT S.Sname
FROM Student S
WHERE S.Sname LIKE'李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
sELECT S.Sname,s.Sno
FROM Student S
WHERE S.Sname LIKE'_丽%'
--16、查询所有不姓“陈”的学生姓名。
sELECT S.Sname
FROM Student S
WHERE S.Sname NOT LIKE'陈%'
--17、查询DB_Design课程的课程号和学分
SELECT c.Cno,e.Ccredit
from Student s INNER JOIN SC c
ON s.Sno=c.Sno
INNER JOIN Course e
ON c.Cno=e.Cno  
AND s.Sname='DB_Design'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT s.Sno,s.Cno
from SC s
WHERE s.Grade IS NULL
--19、查所有有成绩的学生学号和课程号。
SELECT s.Sno,s.Cno
from SC s
WHERE s.Grade  IS NOT NULL
--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT s.Sno,s.Grade
from SC s
WHERE s.Cno='3'
ORDER BY s.Grade DESC
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT*
from Student s
ORDER BY s.Sdept,s.Sage DESC

--22、	查询学生总人数。
SELECT COUNT(s.Sno)
from Student s

--23、	查询选修了数学课程的学生人数。
SELECT  COUNT(s.Sdept)
from Student s
WHERE s.Sdept='ma'

--24、	计算1号课程的学生平均成绩。
SELECT AVG(s.Grade)
from SC s
WHERE s.Cno='1'

--25、	查询选修1号课程的学生最高分数。
SELECT max(s.Grade)
from SC s
WHERE s.Cno='1'
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(c.Grade)
from Student s INNER JOIN SC c
on s.Sno=c.Sno
WHERE s.Sno='200215121'
--27、	求各个课程号及相应的选课人数。
SELECT s.Cno ,COUNT(*)
from SC s
GROUP BY s.Cno

--28、	查询选修了3门以上课程的学生学号。
SELECT s.Sno
from SC s
GROUP BY s.Sno HAVING COUNT(*)>3


 
