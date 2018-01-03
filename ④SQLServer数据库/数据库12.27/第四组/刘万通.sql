INSERT INTO Student VALUES(200215121,'李勇','男',20,'cs')
INSERT INTO Student VALUES(200215122,'刘晨','女',19,'cs')
INSERT INTO Student VALUES(200215123,'王敏','女',18,'MA')
INSERT INTO Student VALUES(200515125,'张立','男',19,'IS')
SELECT*FROM Student
INSERT INTO Student VALUES(200215126,'孙金峰','男',20,'cs')
INSERT INTO Student VALUES(200215127,'曹操','女',19,'cs')
INSERT INTO Student VALUES(200215128,'王文政','女',18,'MA')
INSERT INTO Student VALUES(200515129,'孙1','男',19,'IS')
INSERT INTO Student VALUES(200215131,'孙2','男',20,'cs')
INSERT INTO Student VALUES(200215132,'孙3','女',19,'cs')
INSERT INTO Student VALUES(200215133,'孙4','女',18,'MA')
INSERT INTO Student VALUES(200515135,'孙5','男',19,'IS')
INSERT INTO Student VALUES(200215141,'孙6','男',20,'cs')
INSERT INTO Student VALUES(200215142,'孙7','女',19,'cs')
INSERT INTO Student VALUES(200215143,'孙7','女',18,'MA')
INSERT INTO Student VALUES(200515145,'孙8','男',19,'IS')
INSERT INTO Student VALUES(200215151,'孙9','男',20,'cs')
INSERT INTO Student VALUES(200215152,'孙10','女',19,'cs')
INSERT INTO Student VALUES(200215153,'孙11','女',18,'MA')
INSERT INTO Student VALUES(200515155,'孙12','男',19,'IS')
INSERT INTO Student VALUES(200215161,'孙13','男',20,'cs')
INSERT INTO Student VALUES(200215162,'孙14','女',19,'cs')
INSERT INTO Student VALUES(200215163,'孙15','女',18,'MA')
INSERT INTO Student VALUES(200515165,'孙16','男',19,'IS')
INSERT INTO Student VALUES(200515175,'孙17','男',19,'IS')
























SELECT *FROM Course
INSERT INTO Course VALUES(1,'数据库',4)
INSERT INTO Course VALUES(2,'数学',2)
INSERT INTO Course VALUES(3,'信息系统',4)
INSERT INTO Course VALUES(4,'操作系统',3)
INSERT INTO Course VALUES(5,'数据结构',4)
INSERT INTO Course VALUES(6,'数据处理',2)
INSERT INTO Course VALUES(7,'pascal',4)
INSERT INTO Course VALUES(8,'数据库',4)
INSERT INTO Course VALUES(9,'数学',2)
INSERT INTO Course VALUES(10,'信息系统',4)
INSERT INTO Course VALUES(11,'操作系统',3)
INSERT INTO Course VALUES(12,'数据结构',4)
INSERT INTO Course VALUES(13,'数据处理',2)
INSERT INTO Course VALUES(14,'pascal',4)
INSERT INTO Course VALUES(15,'数据库',4)
INSERT INTO Course VALUES(16,'数学',2)
INSERT INTO Course VALUES(17,'信息系统',4)
INSERT INTO Course VALUES(18,'操作系统',3)
INSERT INTO Course VALUES(19,'数据结构',4)
INSERT INTO Course VALUES(20,'数据处理',2)
INSERT INTO Course VALUES(21,'pascal',4)
INSERT INTO Course VALUES(22,'操作系统',3)
INSERT INTO Course VALUES(23,'数据结构',4)
INSERT INTO Course VALUES(24,'数据处理',2)
INSERT INTO Course VALUES(25,'pascal',4)


INSERT INTO sc VALUES(200215121,1,92)
INSERT INTO sc VALUES(200215121,2,85)
INSERT INTO sc VALUES(200215121,3,88)
INSERT INTO sc VALUES(200215122,2,90)
INSERT INTO sc VALUES(200215122,3,80)

INSERT INTO sc VALUES(200215121,1,92)
INSERT INTO sc VALUES(200215121,2,85)
INSERT INTO sc VALUES(200215121,3,88)
INSERT INTO sc VALUES(200215122,2,90)
INSERT INTO sc VALUES(200215122,3,80)
SELECT *FROM sc
--、查询全体学生的学号与姓名。
SELECT a.sno,a.sname
from Student a




--2、查询全体学生的姓名、学号、所在系。
SELECT a.sname,a.sno,a.sdept
from Student a



--3、查全体学生的姓名及其出生年份。




--查询选修了课程的学生学号（即有选修记录）。
SELECT *
FROM SC a



--5、查询计算机科学系全体学生的名单。

SELECT a.sname
from Student a
where a.sdept='cs'




--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.sname,a.sage
from Student a
where a.sage<20



--7、查询考试成绩有不及格的学生的学号。
SELECT a.sno
from SC a
where a.grade<60

--查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from Student a
WHERE a.sage>=18 AND a.sage<=22



--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from Student a
WHERE a.sage!=18 AND a.sage!=22

--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
   SELECT a.sname,a.ssex 
   from Student a
   where a.sdept IN ('is','ma','cs')

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
 SELECT a.sname,a.ssex 
   from Student a
   where a.sdept NOT  IN ('is','ma','cs')



--12、查询学号为09102040203的学生的详细情况。
SELECT *
from Student a
where a.sno=09102040203


--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT  a.sname,a.ssex
from Student a
WHERE  a.sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.sname
from Student a
WHERE a.sname LIKE '李__'
--查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT a.sname ,a.sno
from Student a
WHERE a.sname LIKE '_丽_'
--、查询所有不姓“陈”的学生姓名。
SELECT a.sname 
from Student a
WHERE a.sname NOT  LIKE '陈%'