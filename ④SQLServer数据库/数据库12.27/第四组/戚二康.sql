INSERT INTO student VALUES (2001001,'曹操','男',20,'cs')
INSERT INTO student VALUES (2001002,'张飞','男',19,'is')
INSERT INTO student VALUES (2001003,'马超','男',18,'cs')
INSERT INTO student VALUES (2001004,'关羽','男',19,'ma')
INSERT INTO student VALUES (2001005,'黄忠','男',22,'cs')
INSERT INTO student VALUES (2001006,'李云龙','男',28,'cs')
INSERT INTO student VALUES (2001007,'貂蝉','女',20,'is')
INSERT INTO student VALUES (2001008,'刘备','男',22,'cs')
INSERT INTO student VALUES (2001009,'司马懿','男',23,'ma')
INSERT INTO student VALUES (2001010,'周瑜','男',20,'cs')
INSERT INTO student VALUES (2001012,'大乔','女',18,'is')
INSERT INTO student VALUES (2001013,'小乔','女',17,'is')
INSERT INTO student VALUES (2001014,'孙尚香','女',20,'ma')
INSERT INTO student VALUES (2001015,'姜维','男',18,'cs')
INSERT INTO student VALUES (2001016,'王司徒','男',23,'ma')
INSERT INTO student VALUES (2001017,'张辽','男',20,'is')
INSERT INTO student VALUES (2001018,'赵云','男',20,'cs')
INSERT INTO student VALUES (2001019,'诸葛亮','男',21,'ma')
INSERT INTO student VALUES (2001020,'孙权','男',19,'cs')
INSERT INTO student VALUES (2001021,'陆逊','男',21,'is')
INSERT INTO student VALUES (2001022,'鲁肃','男',23,'ma')
INSERT INTO student VALUES (2001023,'许褚','男',20,'cs')
INSERT INTO student VALUES (2001024,'庞统','男',21,'ma')
INSERT INTO student VALUES (2001025,'郭嘉','男',20,'ma')


INSERT INTO course VALUES (1,'数据库',4)
INSERT INTO course VALUES (2,'数学',4)
INSERT INTO course VALUES (3,'信息系统',5)
INSERT INTO course VALUES (4,'操作系统',4)
INSERT INTO course VALUES (5,'数据结构',6)
INSERT INTO course VALUES (6,'数据处理',4)
INSERT INTO course VALUES (7,'PASCAL语言',6)
INSERT INTO course VALUES (8,'数据库',5)
INSERT INTO course VALUES (9,'信息系统',4)
INSERT INTO course VALUES (10,'操作系统',5)
INSERT INTO course VALUES (11,'操作系统',6)
INSERT INTO course VALUES (12,'数据结构',6)
INSERT INTO course VALUES (13,'数据处理',4)
INSERT INTO course VALUES (14,'PASCAL语言',5)
INSERT INTO course VALUES (15,'数据库',5)
INSERT INTO course VALUES (16,'信息系统',4)
INSERT INTO course VALUES (17,'操作系统',5)
INSERT INTO course VALUES (18,'数据结构',6)
INSERT INTO course VALUES (19,'数据处理',5)
INSERT INTO course VALUES (20,'PASCAL语言',4)
INSERT INTO course VALUES (21,'数据库',4)
INSERT INTO course VALUES (22,'信息系统',6)
INSERT INTO course VALUES (23,'操作系统',5)
INSERT INTO course VALUES (24,'数据结构',6)
INSERT INTO course VALUES (25,'PASCAL语言',4)


INSERT INTO sc VALUES (2001002,2,62)
INSERT INTO sc VALUES (2001005,3,75)
INSERT INTO sc VALUES (2001001,5,75)
INSERT INTO sc VALUES (2001016,6,86)
INSERT INTO sc VALUES (2001013,4,89)
INSERT INTO sc VALUES (2001020,7,78)
INSERT INTO sc VALUES (2001010,8,76)
INSERT INTO sc VALUES (2001009,1,88)
INSERT INTO sc VALUES (2001008,10,72)
INSERT INTO sc VALUES (2001006,9,58)

--1、查询全体学生的学号与姓名。
SELECT a.Sno,a.sname
from student a
--2、查询全体学生的姓名、学号、所在系。
SELECT a.Sno,a.sname,a.sdept
from student a
--3、查全体学生的姓名及其出生年份。
SELECT a.sname ,2017-a.sage
from student a
--4、查询选修了课程的学生学号（即有选修记录）。
SELECT a.sno
from sc a 
--5、查询计算机科学系全体学生的名单。
SELECT a.sname
from student a
WHERE a.sdept='cs'
--6、查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT a.sname,a.sage
from student a
WHERE a.sage<20
--7、查询考试成绩有不及格的学生的学号。
SELECT a.sno
from sc a
WHERE a.grade<60
--8、查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage>=18 AND a.sage<=22
--9、查询年龄不在20~23岁之间的学生姓名、系别和年龄
SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage<18 OR a.sage>22
--10、查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
where a.sdept in('is','ma','cs') 
--11、查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT a.sname,a.ssex
from student a
where a.sdept NOT  in('is','ma','cs') 
--12、查询学号为09102040203的学生的详细情况。
SELECT*
from student a
where a.Sno=09102040203
--13、查询所有姓“张”学生的姓名、学号和性别。
SELECT a.sname,a.Sno,a.ssex
from student a
WHERE a.sname LIKE '张%'
--14、查询姓“李”且全名为三个汉字的学生的姓名。
SELECT a.sname
from student a
WHERE a.sname LIKE '李__'