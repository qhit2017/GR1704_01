--1、查询全体学生的学号与姓名。
SELECT A.Sno ,A.Sname 
FROM  Student A 
--2、查询全体学生的姓名、学号、所在系。
SELECT A.Sname ,A.Sno ,A.Sdept 
FROM Student A
--3、查全体学生的姓名及其出生年份。
SELECT A.Sname ,2017-A.Sage 
FROM Student A
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT S.Sno ,C.CName  
FROM SC A INNER JOIN Student  S ON A.Sno =A.Sno 
INNER JOIN Course  C ON A.Cno =A.Cno 
--5、查询计算机科学系全体学生的名单。
SELECT  *
FROM Student s INNER JOIN Course c ON c.Cno = c.Cno 
WHERE c.CName ='计算机科学系'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT A.Sname , A.Sage 
FROM Student A
WHERE A.Sage <20
--7、查询考试成绩有不及格的学生的学号。
SELECT A.Sno 
FROM SC A
WHERE A.Grade <60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT A.Sname ,A.Sdept ,A.Sage 
FROM Student A
WHERE A.Sage IN (18,22)
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT A.Sname ,A.Sdept ,A.Sage 
FROM Student A
WHERE A.Sage NOT IN (20,23)
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT A.Sname ,A.Ssex 
FROM Student  A
WHERE A.Sdept ='IS'OR A.Sdept ='MA'OR A.Sdept ='CS'
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT A.Sname ,A.Ssex 
FROM Student A
WHERE A.Sdept NOT IN ('IS','MA','CS')
--12、查询学号为09102040203的学生的详细情况。
SELECT *
FROM Student A
WHERE A.Sno =09102040203
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.Sname ,A.Sno ,A.Ssex 
FROM Student A
WHERE A.Sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT *
FROM Student B
WHERE B.Sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT V.Sname ,v.Sno 
FROM Student V
WHERE V.Sname LIKE '_丽%'
--16、查询所有不姓“陈”的学生姓名。
SELECT *
FROM Student A
WHERE A.Sname NOT LIKE '陈%'
--17、查询DB_Design课程的课程号和学分。
SELECT a.Cno ,a.Ccredit 
FROM Course A
WHERE A.CName ='DB_Design'
--22、	查询学生总人数。
SELECT COUNT(A.Sno ) 
FROM Student A





