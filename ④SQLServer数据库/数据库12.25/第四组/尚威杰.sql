SELECT * FROM EMP 
SELECT * FROM  DEPT

--1.查询部门名称是‘SALES’的员工信息 
SELECT *
from EMP a 
WHERE a.DEPTNO='sales'
--2.查询公司中薪水最高的员工信息 
SELECT MAX(b.SAL) 
from EMP b

SELECT *
from EMP q
where q.SAL=(SELECT MAX(b.SAL) 
from EMP b)
--3.查询各部门中最高薪水的员工编号，姓名… 
SELECT max(C.SAL) 
from EMP c
GROUP BY c.DEPTNO

SELECT w.EMPNO,w.ENAME
from EMP w
where w.SAL IN (SELECT max(C.SAL) 
from EMP c
GROUP BY c.DEPTNO)
--4.查询各部门最高薪水的员工信息 
SELECT MAX(e.SAL) 
from EMP e
GROUP BY e.DEPTNO 

SELECT *
from EMP r
where r.SAL IN (SELECT MAX(e.SAL) 
from EMP e
GROUP BY e.DEPTNO ) 

--5.查询薪水大于该部门平均薪水的员工信息 
SELECT AVG(t.SAL) 
from EMP t
where t.DEPTNO='10'AND t.DEPTNO='20'AND t.DEPTNO='30' 

--7.查询领导者是‘BLAKE’的员工信息 
SELECT y.EMPNO
from EMP y
where y.ENAME='blake'

SELECT *
from EMP u
WHERE u.MGR=(SELECT y.EMPNO
from EMP y
where y.ENAME='blake')

--8.查询和SMITH工作相同的员工信息 
SELECT i.JOB
from EMP i
where i.ENAME='smith'

SELECT *
from EMP o
where o.JOB=(SELECT i.JOB
from EMP i
where i.ENAME='smith')
--9.查询平均工资比10部门低的部门编号 
SELECT AVG(p.SAL) 
from EMP p
where p.DEPTNO='10'

SELECT f.EMPNO
from EMP f
where f.SAL<(SELECT AVG(p.SAL) 
from EMP p
where p.DEPTNO='10')
--10.查询在NEW YORK工作的所有员工 
SELECT *
from DEPT g
where g.DEPTNO='10'
--11.查询10号部门的员工在整个公司中所占的比例： 


--12、查询比普通员工的最高薪水还要高的领导者姓名 
--13、找出薪水最高的五个人

--14、列出至少有三个员工的所有部门和部门信息
--15、查询最后入职的5名员工
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称
