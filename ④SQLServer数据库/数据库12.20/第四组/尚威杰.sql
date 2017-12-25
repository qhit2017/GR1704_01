INSERT INTO student VALUES (1,'尚威杰','男',17,'计算机',92)

INSERT INTO student VALUES (2,'徐士煜','男',19,'计算机',88)

INSERT INTO student VALUES (3,'陈俊成','男',12,'计算机',100)

INSERT INTO student VALUES (4,'李佳康','女',18,'幼师',80)

INSERT INTO student VALUES (5,'梁壮壮','男',17,'幼师',98)

INSERT INTO student VALUES (6,'梁哲','女',21,'建筑',32)

INSERT INTO student VALUES (7,'陈起航','男',18,'建筑',45)

INSERT INTO student VALUES (8,'张戈','女',21,'建筑',82)

INSERT INTO student VALUES (9,'刘万通','男',19,'航空',66)

INSERT INTO student VALUES (10,'刘长江','女',17,'计算机',78)

INSERT INTO student VALUES (11,'戚二康','男',13,'计算机',77)

INSERT INTO student VALUES (12,'尚赛赛','女',17,'航空',33)

INSERT INTO student VALUES (13,'孙玉峰','男',15,'会计',33)

INSERT INTO student VALUES (14,'申宇浩','女',17,'会计',88)

INSERT INTO student VALUES (15,'许龙曦','男',21,'会计',99)

INSERT INTO student VALUES (16,'于圣杰','女',17,'厨师',100)

INSERT INTO student VALUES (17,'张家豪','男',22,'厨师',20)

INSERT INTO student VALUES (18,'张济森','女',23,'厨师',30)

INSERT INTO student VALUES (19,'刘博','男',25,'计算机',64)

INSERT INTO student VALUES (20,'党刘涛','女',27,'计算机',67)

SELECT * FROM student

--1.	查询全体学生的学号与姓名。

SELECT a.xuehao,a.xingming
from student a

--2.	查询全体学生的姓名、学号、专业。
SELECT b.xingming,b.xuehao,b.zhuanyeming
from student b

--3.	查全体学生的姓名及其年龄。
SELECT c.xingming,c.nianling
from student c

--4.	查询“计算机科学”专业全体学生的名单。
SELECT *
FROM student WHERE zhuanyeming ='计算机'

--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT e.nianling,e.xingming
from student e WHERE e.nianling<20

--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT f.xingming,f.nianling,f.chengji
FROM student f
where f.nianling <18 
ORDER BY f.chengji desc

--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT*
from student g
WHERE g.chengji<60
ORDER BY g.chengji DESC

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT h.xingming,h.zhuanyeming,h.nianling
from student h
WHERE h.nianling>=18 AND h.nianling<=22

--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT i.xingming,i.zhuanyeming,i.nianling
from student i
WHERE i.nianling<20 OR i.nianling>23

--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT o.xingming,o.xingbie,o.zhuanyeming
from student o
WHERE o.zhuanyeming='厨师' OR
o.zhuanyeming='会计'OR
o.zhuanyeming='计算机'

--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT q.zhuanyeming,q.xingming,q.xingbie
from student q
WHERE q.zhuanyeming!='会计'AND
q.zhuanyeming!='计算机'

--12.	查询学号为09102040203的学生的详细情况
SELECT *
FROM student w
WHERE w.xuehao='1'

--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT z.xingming,z.xuehao,z.xingbie
from student z
WHERE z.xingming like'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT n.xingming
from student n
WHERE n.xingming LIKE '李%%'

--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT m.xingming,m.xuehao
from student m
WHERE m.xingming LIKE '_威_'

--16.	查询所有不姓“陈”的学生姓名。
SELECT x.xingming
from student x
WHERE x.xingming!='陈'
