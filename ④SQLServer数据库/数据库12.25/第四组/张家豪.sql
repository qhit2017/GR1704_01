--1.查询部门名称是‘SALES’的员工信息

SELECT * FROM emp

SELECT  *
from emp a
where a.job='clerk'
--2.查询公司中薪水最高的员工信息 
SELECT MAX(b.mgr)   
from emp b

SELECT* 
from emp c
where c.mgr=(SELECT MAX(b.mgr)   
from emp b)
--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job

SELECT e.empno ,e.ename 
from emp e
where e.mgr  IN  (SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job)
--4.查询各部门最高薪水的员工信息 

SELECT *
from emp e
where e.mgr  IN  (SELECT MAX(d.mgr) 
from emp d
GROUP BY d.job)
--7.查询领导者是‘BLAKE’的员工信息 
SELECT r.empno 
from emp r
WHERE r.ename='BLAKE'

SELECT *
from emp d
where d.mgr=(SELECT r.empno 
from emp r
WHERE r.ename='BLAKE'
)
--8.查询和SMITH工作相同的员工信息 

SELECT a.job
from emp a
WHERE a.ename='SMITH'

SELECT *
from emp c
where c.job=(SELECT a.job
from emp a
WHERE a.ename='SMITH'
) 
--9.查询平均工资比10部门低的部门编号 
SELECT  AVG(d.mgr) 
from emp d
WHERE d.deptno='10'

SELECT s.deptno
from emp s
GROUP BY s.deptno
HAVING AVG(s.mgr) >(SELECT  AVG(d.mgr) 
from emp d
WHERE d.deptno='10')
--10.查询在CLERK工作的所有员工 
SELECT *
from emp s
where s.job='CLERK'