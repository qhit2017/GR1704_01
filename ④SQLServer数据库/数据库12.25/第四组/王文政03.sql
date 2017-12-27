--1.查询部门名称是‘SALES’的员工信息
SELECT *
from DEPT a
where a.DNAME='SALES'

--2.查询公司中薪水最高的员工信息
SELECT MAX(b.SAL)
from EMP b

SELECT *
from EMP f
where f.SAL=(SELECT MAX(b.SAL)
	from EMP b)

--3.查询各部门中最高薪水的员工编号，姓名…
SELECT MAX(d.SAL)
from EMP d
GROUP BY d.DEPTNO

SELECT e.EMPNO,e.ENAME
from EMP e
WHERE e.SAL IN (SELECT MAX(d.SAL)
	from EMP d
	GROUP BY d.DEPTNO)
--4.查询各部门最高薪水的员工信息
SELECT MAX(w.SAL)
from EMP w
GROUP BY w.DEPTNO

SELECT*
from EMP g
where g.SAL IN (SELECT MAX(w.SAL)
	from EMP w
	GROUP BY w.DEPTNO)
	
--5.查询薪水大于该部门平均薪水的员工信息
SELECT AVG(rs.SAL)
from EMP rs
GROUP BY rs.DEPTNO

SELECT *
from EMP sr
WHERE sr.SAL>(SELECT AVG(rs.SAL)
	from EMP rs
	GROUP BY rs.DEPTNO)

--7.查询领导者是‘BLAKE’的员工信息
 SELECT alo.EMPNO
 from EMP alo
 WHERE alo.ENAME='BLAKE'
 
 SELECT *
 from emp ggo
 WHERE ggo.MGR=(SELECT alo.EMPNO
	 from EMP alo
	 WHERE alo.ENAME='BLAKE')
	 
--8.查询和SMITH工作相同的员工信息
SELECT uw.JOB
from EMP uw
where uw.ENAME='SMITH'

SELECT *
from EMP k
where k.JOB=(SELECT uw.JOB
	from EMP uw
	where uw.ENAME='SMITH')
	
--9.查询平均工资比10部门低的部门编号
SELECT fb.DEPTNO,
AVG(fb.SAL)
from EMP fb
GROUP BY fb.DEPTNO
HAVING AVG(fb.SAL)<(SELECT AVG(fn.SAL)
from EMP fn
where fn.DEPTNO=10 )

--10.查询在NEW YORK工作的所有员工
SELECT *
from DEPT fg
WHERE fg.LOC='NEW YORK'

--17、列出各种工作的最低工资以及从事该工作的雇员姓名
SELECT MIN(fv.SAL)
from EMP fv
GROUP BY fv.JOB

SELECT fj.ENAME
from EMP fj
where fj.ENAME=(SELECT MIN(fv.SAL)
	from EMP fv
	GROUP BY fv.JOB)


--12、查询比普通员工的最高薪水还要高的领导者姓名

SELECT fy.ENAME
from EMP fy
where fy.SAL>(SELECT MAX(fu.SAL) from EMP fu WHERE fu.EMPNO!=fu.MGR)

--11.查询10号部门的员工在整个公司中所占的比例
SELECT CAST(COUNT(*) AS nvarchar)+'/'+cast ((SELECT count(*) FROM emp fi) AS nvarchar) as'10号部门员工所占公司比例'
FROM emp fl
where fl.DEPTNO=10