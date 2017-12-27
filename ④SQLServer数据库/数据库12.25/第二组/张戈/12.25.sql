SELECT * FROM EMP


--1.查询部门名称是‘SALES’的员工信息 
SELECT * 
from EMP a
WHERE a.JOB='SALES'

--2.查询公司中薪水最高的员工信息 
SELECT  MAX(b.SAL)
FROM EMP b

SELECT *
FROM EMP b
WHERE b.SAL=(
SELECT MAX(b.SAL)
FROM EMP b)

--3.查询各部门中最高薪水的员工编号，姓名
SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO

SELECT c.EMPNO,c.ENAME
from EMP c
where c.SAL in(SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO)

--4.查询各部门最高薪水的员工信息 
SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO

SELECT *
from EMP c
where c.SAL in(SELECT  MAX(c.SAL)
from EMP c
GROUP BY c.DEPTNO)

--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(d.SAL)
from EMP d

SELECT *
FROM EMP d
where d.SAL>(SELECT AVG(d.SAL)
from EMP d)

--6.查询部门名称是‘SALES’的员工信息 
SELECT * 
from EMP e
WHERE e.JOB='SALES'

--7.查询领导者是‘BLAKE’的员工信息 
SELECT f.EMPNO
from EMP f
WHERE f.ENAME='BLAKE'

SELECT *
FROM EMP f
where f.MGR IN (SELECT f.EMPNO
from EMP f
WHERE f.ENAME='BLAKE'
)
--8.查询和SMITH工作相同的员工信息 
SELECT g.JOB
from EMP g
WHERE g.ENAME='SMITH'

SELECT *
from EMP g
where g.JOB IN (SELECT g.JOB
from EMP g
WHERE g.ENAME='SMITH')

--9.查询平均工资比10部门低的部门编号 
SELECT  avg(h.SAL)
from EMP h
WHERE h.DEPTNO=10

SELECT h.DEPTNO
from EMP h
GROUP BY h.DEPTNO
HAVING avg(h.SAL)<(SELECT  avg(h.SAL)
from EMP h
WHERE h.DEPTNO=10) 

--10.查询在NEW YORK工作的所有员工    
SELECT *
from DEPT i
WHERE i.LOC = 'NEW YORK'

--11.查询10号部门的员工在整个公司中所占的比例：
 

--12、查询比普通员工的最高薪水还要高的领导者姓名 
--13、找出薪水最高的五个人 
--14、列出至少有三个员工的所有部门和部门信息
--15、查询最后入职的5名员工
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称

