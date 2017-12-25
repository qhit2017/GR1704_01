
--1.	查询全体学生的学号与姓名。
SELECT *FROM xinxi

--2.	查询全体学生的姓名、学号、专业。
SELECT q.xingming,q.xuehao,q.zhuanye
from xinxi q

--3.	查全体学生的姓名及其年龄。
SELECT w.xingming,w.nianling
from xinxi w




--4.	查询“计算机科学”专业全体学生的名单。
SELECT*
from xinxi e
WHERE e.zhuanye='计算机科学'


--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
SELECT*
from xinxi r
where r.nianling<20


--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
SELECT *
from xinxi a
WHERE a.nianling<18 ORDER BY a.chengji



--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
SELECT  s.xuehao
from xinxi s
where s.chengji<60  order BY s.xuehao DESC

--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
SELECT z.xingming,z.zhuanye,z.nianling
from xinxi z
WHERE z.nianling>=18AND z.nianling<=22



--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
SELECT d.xingming,d.zhuanye,d.nianling
from xinxi d
where d.nianling!=20AND d.nianling!=21AND d.nianling!=22 AND d.nianling!=23



--10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
SELECT x.xingming,x.xingbie
from xinxi x
where x.zhuanye='信息'OR x.zhuanye='数学'OR x.zhuanye='计算机科学'



--11.	查询既不是信息系、数学系，也不是计算机科学系的学生的姓名和性别。
SELECT v.xingming,v.xingbie
from xinxi v
where v.zhuanye!='信息'OR v.zhuanye!='数学' OR v.zhuanye!='计算机科学'


--12.	查询学号为09102040203的学生的详细情况。
SELECT *
from xinxi b
where b.xuehao=91020




--13.	查询所有姓“张”学生的姓名、学号和性别。
SELECT*
from xinxi m
WHERE m.xingming LIKE'张%'

--14.	查询姓“李”且全名为三个汉字的学生的姓名。
SELECT*
from xinxi p
WHERE p.xingming LIKE'张__'


--15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
SELECT *
from xinxi g
where g.xingming='_丽_'


--16.	查询所有不姓“陈”的学生姓名。


SELECT*
from xinxi j
where j.xingming!='陈%'

