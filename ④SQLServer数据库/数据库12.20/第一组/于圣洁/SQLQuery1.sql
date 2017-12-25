select * from studenta

insert into studenta values (1,'名一','男',15,'计算机',99)
insert into studenta values (2,'名二','女',18,'计算机',45)
insert into studenta values (3,'名三','女',21,'高铁',66)
insert into studenta values (4,'名四','男',16,'美术',48)
insert into studenta values (5,'名五','女',19,'汽修',47)
insert into studenta values (6,'名六','男',17,'高铁',68)
insert into studenta values (7,'名七','男',17,'计算机',76)
insert into studenta values (8,'名八','男',19,'美术',88)
insert into studenta values (9,'名九','女',18,'美术',76)
insert into studenta values (10,'名十','男',18,'计算机',100)
--1.	查询全体学生的学号与姓名。
select a.sid ,a.sname 
from studenta a
--2.	查询全体学生的姓名、学号、专业。
select b.sname ,b.sid ,b.sdept 
from studenta b
--3.	查全体学生的姓名及其年龄。
select c.sname ,c.sage 
from studenta c
--4.	查询“计算机科学”专业全体学生的名单。
select *
from studenta d
where d.sdept ='计算机'
--5.	查询所有年龄在20岁以下的学生姓名及其年龄。
select *
from studenta e
where e.sage <=20
--6.	查询未成年的学生的姓名、年龄、成绩，并按照成绩排序。
select f.grade ,f.sname ,f.sage
from studenta f
--7.	查询成绩有不及格的学生的学号，并按照成绩降序排列。
select *
from studenta g
where g.grade <60  
select * from studenta g
order by g.grade desc 
--8.	查询年龄在18~22岁（包括18岁和22岁）之间的学生的姓名、专业和年龄。
select h.sname ,h.sdept,h.sage 
from studenta h
where h.sage <=22 and h.sage >=18
--9.	查询年龄不在20~23岁之间的学生姓名、专业和年龄。
select i.sname ,i.sdept ,i.sage 
 from studenta  i
 where i.sage <20 and i.sage >23
 --10.	查询信息系（IS）、数学系（MA）和计算机科学系（CS）学生的姓名和性别。
 select j.sname ,j.ssex 
 from studenta j
 where j.sdept ='计算机'or j.sdept ='美术'
 --11.	查询既不是信息系、信息系，也不是计算机科学系的学生的姓名和性别
 select k.sname ,k.ssex 
 from studenta k
 where k.sdept! ='信息系' and k.sdept ='信息系'and  k.sdept ='计算机科学系'
 --12.	查询学号为09102040203的学生的详细情况。
 select *
 from studenta l
 where l.sid =5
 --13.	查询所有姓“张”学生的姓名、学号和性别。
 select m.sname ,m.sid ,m.ssex 
 from studenta m
 where m.sname like '张%'
 --14.	查询姓“李”且全名为三个汉字的学生的姓名。
 select n.sname 
 from studenta  n
 where n.sname like '李__'
 --15.	查询名字中第2个字为“丽”字的学生的姓名和学号。
 select p.sname ,p.sid 
 from studenta p
 where p.sname like '_丽_'
 --16.	查询所有不姓“陈”的学生姓名。
 select q.sname 
 from studenta q
 where q.sname !='陈'
 
 
 
 
 
 
 
 





