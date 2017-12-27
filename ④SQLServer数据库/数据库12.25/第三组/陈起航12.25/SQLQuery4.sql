
SELECT*FROM EMP
--1.查询部门名称是‘SALES’的员工信息 
SELECT *
from EMP a 
WHERE a.EMPNO='SALES'


--2.查询公司中薪水最高的员工信息 
SELECT MAX(b.SAL) 
from EMP b

SELECT *
from EMP p
WHERE p.SAL=(SELECT MAX(b.SAL) 
from EMP b)

--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(f.SAL)
from EMP f
GROUP BY f.DEPTNO

SELECT t.EMPNO,t.EMPNO
from EMP t
WHERE t.SAL in(SELECT MAX(f.SAL)
from EMP f
GROUP BY f.DEPTNO)


--4.查询各部门最高薪水的员工信息 
SELECT MAX(p.SAL) 
from EMP p
GROUP BY p.DEPTNO
SELECT *
from EMP p
WHERE  p.SAL IN  (SELECT MAX(p.SAL) 
from EMP p
GROUP BY p.DEPTNO)


--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(e.SAL) 
from EMP e 
GROUP BY e.DEPTNO

SELECT *
from EMP e
WHERE e.SAL>(SELECT AVG(e.SAL) 
from EMP e 
GROUP BY e.DEPTNO)


