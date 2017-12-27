select *
from EMP 
select *
from DEPT 
--1.查询部门名称是‘SALES’的员工信息 
select *
from DEPT  a cross join EMP b


--2.查询公司中薪水最高的员工信息 
select MAX (b.SAL ) 
from EMP b
select *
from EMP b
where b.SAL =(select MAX (b.SAL ) 
from EMP b)


--3.查询各部门中最高薪水的员工编号，姓名… 
select MAX (c.SAL )
from EMP c
select c.EMPNO ,c.ENAME 
from EMP c
where c.SAL =(select MAX (c.SAL )
from EMP c)

--4.查询各部门最高薪水的员工信息 
select MAX(d.SAL )
from EMP d
select *
from EMP d
where d.SAL =(select MAX(d.SAL )
from EMP d)

--5.查询薪水大于该部门平均薪水的员工信息 
select AVG (e.SAL )
from EMP e
group by e.DEPTNO 

select *
from EMP e
where e.SAL > AVG (e.SAL )


--6.查询部门名称是‘SALES’的员工信息 

--7.查询领导者是‘BLAKE’的员工信息
select *
from EMP f
where f.MGR is null 

--8.查询和SMITH工作相同的员工信息 
select g.JOB 
from EMP g
where g.ENAME ='smith'
select *
from EMP g
where g.JOB =(select g.JOB 
from EMP g
where g.ENAME ='smith')

--9.查询平均工资比10部门低的部门编号
select AVG (k.SAL )
from EMP k
where k.DEPTNO =10 
select k.DEPTNO 
from EMP k
where k.sal <(select AVG (k.SAL )
from EMP k
where k.DEPTNO =10 )

--10.查询在NEW YORK工作的所有员工 
select * 
from DEPT a
where a.LOC ='new york'


--11.查询10号部门的员工在整个公司中所占的比例：
 

--12、查询比普通员工的最高薪水还要高的领导者姓名 
--13、找出薪水最高的五个人 
--14、列出至少有三个员工的所有部门和部门信息
--15、查询最后入职的5名员工
--16、列出最低薪金大于1500的各种工作以及从事此工作的全部雇员人数

--17、列出各种工作的最低工资以及从事该工作的雇员姓名

--18、求薪水最低的部门经理所在部门的名称

