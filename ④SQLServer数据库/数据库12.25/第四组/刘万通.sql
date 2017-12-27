SELECT *
from EMP
--.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM dept a
where a.DNAME='sales'


--2.查询公司中薪水最高的员工信息 
SELECT MAX(a.SAL)
FROM EMP a

SELECT *
from EMP b
where b.SAL=(SELECT MAX(a.SAL)
FROM EMP a)


--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO

 SELECT b1.EMPNO,b1.ENAME
 from EMP b1
 where b1.SAL IN (SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO)




--4.查询各部门最高薪水的员工信息 

SELECT *
 from EMP b1
 where b1.SAL IN (SELECT MAX(a.SAL)
FROM EMP a
GROUP by a.DEPTNO)




--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(a.SAL) 
from EMP a
GROUP by a.DEPTNO
SELECT *
FROM EMP a
where a.SAL>()AVG(a.SAL(SELECT AVG(a.SAL) 
from EMP a)
    




--6.查询部门名称是‘SALES’的员工信息
SELECT *
FROM dept a
where a.DNAME='sales'

 

--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
from EMP a
where a.ENAME='blake'



--8.查询和SMITH工作相同的员工信息 

SELECT *
FROM EMP a
where a.JOB=(SELECT a.JOB
from EMP a
WHERE a.ENAME='smith')



--9.查询平均工资比10部门低的部门编号
SELECT a.DEPTNO
from EMP a
GROUP BY a.DEPTNO
HAVING AVG(a.SAL)<(SELECT AVG(a.SAL)from EMP a WHERE a.DEPTNO=10 ) 

--10.查询在NEW YORK工作的所有员工 
SELECT *
from dept A
where A.loc='new york'


11.查询10号部门的员工在整个公司中所占的比例： 

12、查询比普通员工的最高薪水还要高的领导者姓名 
13、找出薪水最高的五个人 
14、列出至少有三个员工的所有部门和部门信息
15、查询最后入职的5名员工
16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

17、列出各种工作的最低工资以及从事该工作的雇员姓名

18、求薪水最低的部门经理所在部门的名称
