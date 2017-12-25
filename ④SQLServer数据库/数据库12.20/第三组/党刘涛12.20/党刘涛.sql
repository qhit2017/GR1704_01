--查询语句
SELECT *FROM student
--更新语句
UPDATE student SET name='象拔蚌'WHERE xuehao =1
--删除所有语句
DELETE FROM student
--1.	查询全体学生的学号与姓名。
SELECT  a.xuehao,a.name
from student a
--2.	查询全体学生的姓名、学号、专业。
SELECT b.name,b.xuehao,b.zhuanye
from student b
--3.	查全体学生的姓名及其年龄。
SELECT  c.name,c.age
from student c
--4.	查询“计算机科学”专业全体学生的名单。
SELECT *FROM student WHERE zhuanye='电脑'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT *FROM student WHERE age<20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT *FROM student WHERE age<18 ORDER BY chengji
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT *FROM student WHERE chengji<60 ORDER BY chengji DESC 
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT *FROM student WHERE age>=18AND age<=22
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT *FROM student WHERE age>=20AND age<=23
--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT b.name,b.sex
FROM student b WHERE b.zhuanye ='电脑'OR b.zhuanye='it'
--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT b.name,b.sex
from student b WHERE b.zhuanye !='画画'AND b.zhuanye!='电脑'AND b.zhuanye!='黑客'
--12.	查询学号为09102040203的学生的详细情况。
SELECT ac.name,ac.sex,ac.age,ac.zhuanye,ac.chengji
from student ac WHERE ac.xuehao=1
--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT n.name,n.xuehao,n.sex
from student n WHERE n.name LIKE '陈%'
--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT m.name
from student m WHERE m.name LIKE'党__'
--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT l.xuehao,l.name
from student l WHERE l.name LIKE'_启_'
--16.	查询所有不姓“陈”的学生姓名。
SELECT p.name
from student p WHERE p.name NOT LIKE'陈%'