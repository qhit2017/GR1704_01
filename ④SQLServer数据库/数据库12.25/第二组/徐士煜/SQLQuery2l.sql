SELECT * FROM EMP

--1.查询部门名称是‘SALES’的员工信息 
SELECT *
FROM EMP a
WHERE a.JOB='SALES'

--2.查询公司中薪水最高的员工信息
SELECT MAX(b.SAL)
from EMP b
SELECT *
FROM EMP c
WHERE c.SAL=(SELECT MAX(b.SAL)
from EMP b)


--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(d.SAL)
FROM EMP d
GROUP BY d.DEPTNO

SELECT e.EMPNO,e.ENAME,e.DEPTNO
from EMP e
WHERE e.SAL IN (SELECT MAX(d.SAL)
FROM EMP d
GROUP BY d.DEPTNO) 

--4.查询各部门最高薪水的员工信息
SELECT MAX(f.SAL) 
from EMP f
GROUP BY f.DEPTNO
SELECT *
FROM EMP g
WHERE g.SAL IN(SELECT MAX(f.SAL) 
from EMP f
GROUP BY f.DEPTNO)
--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(h.SAL)
FROM EMP h
GROUP BY h.DEPTNO
SELECT *
FROM EMP i
HAVING i.SAL (SELECT AVG(h.SAL)
FROM EMP h
GROUP BY h.DEPTNO)

select *
from EMP m WHERE m.SAL > 
	(SELECT AVG(n.SAL) from EMP n WHERE n.DEPTNO = m.DEPTNO)

--7.查询领导者是‘BLAKE’的员工信息 
SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE'
SELECT *
FROM EMP k
WHERE k.MGR=(SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 
SELECT l.JOB
from EMP l
WHERE l.ENAME='SMITH'
SELECT *
FROM EMP m
WHERE m.JOB=(SELECT l.JOB
from EMP l
WHERE l.ENAME='SMITH')


--9.查询平均工资比10部门低的部门编号 
SELECT AVG(n.SAL)
from EMP n
WHERE n.DEPTNO=10
SELECT o.DEPTNO
from EMP o
WHERE o.SAL<(SELECT AVG(n.SAL)
from EMP n
WHERE n.DEPTNO=10)


--10.查询在NEW YORK工作的所有员工 
SELECT *
FROM DEPT j
WHERE j.LOC='NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例： 

--12、查询比普通员工的最高薪水还要高的领导者姓名 

--13、找出薪水最高的五个人 
SELECT MIN(z.SAL),z.ENAME
FROM EMP z
GROUP BY z.SAL,z.ENAME
--14、列出至少有三个员工的所有部门和部门信息

--15、查询最后入职的5名员工

--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称

select * FROM DEPT