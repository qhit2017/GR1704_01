--1.查询部门名称是‘SALES’的员工信息

select *
from emp b
where b.DEPTNO=(select a.DEPTNO
    from DEPT a
    where a.DNAME='sales')
    
--2.查询公司中薪水最高的员工信息

select *
from EMP d
where SAL=(select MAX(c.SAL)
    from EMP c)
    
--3.查询各部门中最高薪水的员工编号，姓名…
select e.EMPNO,e.ENAME
from EMP e
where SAL in(select MAX(e.SAL)
  from EMP e
  group by e.DEPTNO)

--4.查询各部门最高薪水的员工信息 

select *
from EMP g
where SAL in(select MAX(f.SAL)
  from EMP f
  group by f.DEPTNO)

--7.查询领导者是‘BLAKE’的员工信息 
SELECT *
FROM EMP k
WHERE k.MGR=(SELECT j.EMPNO
from EMP j
WHERE j.ENAME='BLAKE')

--8.查询和SMITH工作相同的员工信息 

select *
from EMP m
where m.JOB=(select l.JOB
from EMP l
where l.ENAME ='smith')

--9.查询平均工资比10部门低的部门编号 

 SELECT o.DEPTNO
 FROM EMP o
 GROUP BY o.DEPTNO
  HAVING AVG(o.SAL)<(SELECT AVG(n.SAL)
FROM EMP n
 WHERE n.DEPTNO='10')

--10.查询在NEW YORK工作的所有员工 
select *
from EMP p
where p.JOB='newyork'

--11.查询10号部门的员工在整个公司中所占的比例：

select COUNT(W.EMPNO)/(select COUNT(Q.EMPNO)
FROM EMP Q
WHERE Q.DEPTNO='10' )
FROM EMP W 
--13、找出薪水最高的五个人 
select TOP 5q.ENAME
from EMP q
ORDER BY q.SAL DESC