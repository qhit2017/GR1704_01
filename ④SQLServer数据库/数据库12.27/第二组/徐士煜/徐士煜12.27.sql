SELECT * FROM student  
SELECT * FROM course
SELECT * FROM sc
--  二,添加数据
-- student
INSERT INTO student VALUES(200215121,'李勇','男',20,'CS')
INSERT INTO student VALUES(200215122,'刘晨','女',19,'CS')
INSERT INTO student VALUES(200215123,'王敏','女',20,'MA')
INSERT INTO student VALUES(200215125,'张立','男',19,'IS')
INSERT INTO student VALUES(200215126,'李一勇','男',20,'CS')
INSERT INTO student VALUES(200215127,'李二勇','男',20,'CS')
INSERT INTO student VALUES(200215128,'李三勇','男',20,'CS')
INSERT INTO student VALUES(200215129,'李四勇','男',20,'CS')
INSERT INTO student VALUES(200215130,'李五勇','男',20,'CS')
INSERT INTO student VALUES(200215134,'李六勇','男',20,'CS')
-- course
INSERT INTO course VALUES(1,'数据库',4)
INSERT INTO course VALUES(2,'数学',2)
INSERT INTO course VALUES(3,'信息系统',4)
INSERT INTO course VALUES(4,'操作系统',3)
INSERT INTO course VALUES(5,'数据结构',4)
INSERT INTO course VALUES(6,'数据处理',5)
INSERT INTO course VALUES(7,'PASCAL语言',6)
INSERT INTO course VALUES(8,'化学',8)
INSERT INTO course VALUES(9,'政治',5)
INSERT INTO course VALUES(10,'体育',4)
-- sc
INSERT INTO sc VALUES(200215121,1,91)
INSERT INTO sc VALUES(200215121,3,93)
INSERT INTO sc VALUES(200215122,5,95)
INSERT INTO sc VALUES(200215122,6,89)
INSERT INTO sc VALUES(200215123,4,76)
INSERT INTO sc VALUES(200215123,7,85)
INSERT INTO sc VALUES(200215123,8,99)
INSERT INTO sc VALUES(200215129,8,92)
INSERT INTO sc VALUES(200215125,8,78)
INSERT INTO sc VALUES(200215126,10,82)
--  三,查询
--1、查询全体学生的学号与姓名。
SELECT DISTINCT a.Sno,a.Sname
from student a
--2、查询全体学生的姓名、学号、所在系。
SELECT DISTINCT b.Sname,b.Sno,b.Sdept
from student b
--3、查全体学生的姓名及其出生年份。
SELECT c.Sname,2017-c.Sage
from student c
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT DISTINCT d.Sno
from sc d
WHERE d.Cno >0
--5、查询计算机科学系全体学生的名单。
SELECT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='计算机科学系'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT DISTINCT s.Sname,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage<20
--7、查询考试成绩有不及格的学生的学号。
SELECT DISTINCT s.Sno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT DISTINCT  s.Sname,s.Sdept,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage>18 AND s.Sage<22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT DISTINCT  s.Sname,s.Sdept,s.Sage
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sage<20 AND s.Sage>23
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT DISTINCT  s.Sname,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
AND s.Sdept='IS'
OR s.Sdept='MA'
OR s.Sdept='CS'
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT DISTINCT  s.Sname,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sdept != 'IS' 
AND s.Sdept != 'MA' 
AND s.Sdept != 'CS' 
--12、查询学号为09102040203的学生的详细情况。
SELECT DISTINCT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sno=09102040203

--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT DISTINCT s.Sname,s.Sage,s.Ssex
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT DISTINCT s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT  s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname LIKE '_丽_'
--16、查询所有不姓“陈”的学生姓名。
SELECT  s.Sname
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sname NOT LIKE '陈%'
--17、查询DB_Design课程的课程号和学分。
SELECT sc.Cno,Ccredit
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='DB_Design'
--18、某些学生选修课程后没有参加考试，所以有选课记录，但没有考试成绩。查询缺少成绩的学生的学号和相应的课程号。
SELECT s.Sno,sc.Cno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE NULL = sc.Grade 
--19、查所有有成绩的学生学号和课程号。
SELECT s.Sno,sc.Cno
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE NOT NULL=sc.Grade
--20、查询选修了3号课程的学生的学号及其成绩，查询结果按分数降序排列。
SELECT s.Sno,sc.Grade
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=3
ORDER BY sc.Grade DESC
--21、	查询全体学生情况，查询结果按所在系号升序排列，同一系中的学生按年龄降序排列。
SELECT *
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
ORDER BY s.Sdept DESC

--22、	查询学生总人数。
SELECT COUNT(*)
FROM student 
--23、	查询选修了数学课程的学生人数。
SELECT COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE CName='数学'
--24、	计算1号课程的学生平均成绩。
SELECT AVG(sc.Cno)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=1
--25、	查询选修1号课程的学生最高分数。
SELECT MAX(sc.Cno)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE sc.Cno=1
--26、	查询学号为200215121的学生选修课程的总学分数。
SELECT SUM(Ccredit)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
WHERE s.Sno=200215121
--27、	求各个课程号及相应的选课人数。
SELECT sc.Cno,COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
GROUP BY sc.Cno
--28、	查询选修了3门以上课程的学生学号。
SELECT COUNT(*)
FROM student s INNER JOIN sc sc
ON s.Sno=sc.Sno INNER JOIN course
ON sc.Cno=course.Cno
GROUP BY s.Sno


