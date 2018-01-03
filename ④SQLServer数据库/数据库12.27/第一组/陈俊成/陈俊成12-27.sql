SELECT *FROM student 
INSERT INTO  student   values (200215121,'李勇','男',20,'cs')
INSERT INTO  student   values (200215122,'李一','女',21,'ma')
INSERT INTO  student   values (200215123,'李二','男',22,'is')
INSERT INTO  student   values (200215124,'李三','女',23,'cs')
INSERT INTO  student   values (200215125,'李四','女',24,'ma')
INSERT INTO  student   values (200215126,'李五','男',25,'is')
INSERT INTO  student   values (200215127,'李六','女',26,'ma')
INSERT INTO  student   values (200215128,'李七','男',27,'cs')
INSERT INTO  student   values (200215129,'李八','男',28,'is')
INSERT INTO  student   values (200215130,'李九','女',29,'cs')
INSERT INTO  student   values (200215131,'张勇','男',19,'ma')
INSERT INTO  student   values (200215132,'王勇','男',20,'cs')
INSERT INTO  student   values (200215133,'陈勇','女',22,'cs')
INSERT INTO  student   values (200215134,'李1','男',25,'ma')
INSERT INTO  student   values (200215135,'李2','女',23,'cs')
INSERT INTO  student   values (200215136,'李3','男',29,'ma')
INSERT INTO  student   values (200215137,'李4','男',24,'cs')
INSERT INTO  student   values (200215138,'李5','女',21,'is')
INSERT INTO  student   values (200215139,'李6','男',27,'cs')
INSERT INTO  student   values (200215140,'李7','女',26,'ma')
INSERT INTO  student   values (200215141,'李8','男',23,'cs')
INSERT INTO  student   values (200215142,'李9','男',20,'cs')
INSERT INTO  student   values (200215143,'梁勇','男',19,'ma')
INSERT INTO  student   values (200215144,'袁勇','女',20,'cs')
INSERT INTO  student   values (200215145,'李红','男',18,'cs')
INSERT INTO  student   values (200215146,'李红二','男',18,'cs')
INSERT INTO  student   values (200215147,'李丽二','男',18,'cs')


SELECT *FROM course
INSERT INTO course VALUES (1,'数据库',4)
INSERT INTO course VALUES (2,'计算机基础',3)
INSERT INTO course VALUES (3,'数学',5)
INSERT INTO course VALUES (4,'英语',7)
INSERT INTO course VALUES (5,'pascal语言',3)
INSERT INTO course VALUES (6,'物理',1)
INSERT INTO course VALUES (7,'计算机科学',6)
INSERT INTO course VALUES (8,'信息',8)
INSERT INTO course VALUES (9,'数据机构',10)
INSERT INTO course VALUES (10,'数据处理',4)


SELECT *FROM sc
INSERT INTO sc VALUES (200215121,10,80)
INSERT INTO sc VALUES (200215131,2,81)
INSERT INTO sc VALUES (200215141,2,82)
INSERT INTO sc VALUES (200215122,10,83)
INSERT INTO sc VALUES (200215128,8,84)
INSERT INTO sc VALUES (200215127,5,85)
INSERT INTO sc VALUES (200215126,7,86)
INSERT INTO sc VALUES (200215129,8,80)
INSERT INTO sc VALUES (200215130,10,82)
INSERT INTO sc VALUES (200215132,6,88)
INSERT INTO sc VALUES (200215140,8,89)
INSERT INTO sc VALUES (200215141,4,80)
INSERT INTO sc VALUES (200215145,5,85)
INSERT INTO sc VALUES (200215144,6,87)
INSERT INTO sc VALUES (200215139,7,88)
INSERT INTO sc VALUES (200215120,2,90)
INSERT INTO sc VALUES (200215126,4,92)
INSERT INTO sc VALUES (200215135,6,32)
INSERT INTO sc VALUES (200215138,7,64)
INSERT INTO sc VALUES (200215140,8,76)
INSERT INTO sc VALUES (200215144,9,32)
INSERT INTO sc VALUES (200215137,2,34)
INSERT INTO sc VALUES (200215133,4,80)
INSERT INTO sc VALUES (200215132,8,88)

--查询全体学生的学号与姓名。
SELECT s.sno ,s.sname 
from student s 
--查询全体学生的姓名、学号、所在系
SELECT s.sname ,s.sno ,c.cname 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno 
--查全体学生的姓名及其出生年份。
SELECT s.sname ,2017-s.sage 
from student s 
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT sc.sno ,c.cname 
from  sc sc  INNER JOIN course c ON c.cno =sc.cno 
--、查询计算机科学系全体学生的名单。
SELECT s.sname 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
AND c.cname ='计算机科学'
--、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT s.sname ,s.sage 
from student s 
WHERE s.sage <20
--、查询考试成绩有不及格的学生的学号。
SELECT sc.sno 
from sc sc
WHERE sc.grade <60

--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT s.sname ,c.cname ,s.sage 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE s.sage  between 18 AND 22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT s.sname ,c.cname ,s.sage 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE s.sage NOT  between 18 AND 22
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别
SELECT s.sname ,s.ssex 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE c.cname ='信息'OR  c.cname ='数学'OR  c.cname ='计算机科学'

--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT s.sname ,s.ssex 
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
WHERE c.cname !='信息'AND   c.cname !='数学'AND  c.cname !='计算机科学'

--12、查询学号为200215121的学生的详细情况
SELECT *
from student s INNER JOIN sc sc ON s.sno =sc.sno 
INNER JOIN course c ON c.cno =sc.cno
where s.sno =200215121
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT s.sname ,s.sno ,s.ssex 
from student s
where s.sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT s.sname 
from student s
where s.sname LIKE '李__'
--15、查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT s.sname ,s.sno 
from student s
where s.sname LIKE '_丽_'
--16、查询所有不姓“陈”的学生姓名。
SELECT s.sname  
from student s
where s.sname NOT  LIKE '陈%'
--17、查询 数据处理 课程的课程号和学分。
SELECT c.cno ,sc.grade 
from course c INNER JOIN sc sc ON c.cno =sc.cno 
where c.cname ='数据处理'
--