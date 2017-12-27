select *
from emp
--1.查询所有的部门编号： 
select a.DEPTNO  as'部门编号'
from EMP a


--2.查询所有有人的部门编号：
select b.DEPTNO  as'部门编号',b.ENAME as'员工姓名'
from EMP b 

--3.查询所有岗位名称： 
select c. job as'岗位名称'
from EMP c

--4.查询所有薪水超过两千的员工信息 
select *
from EMP d
where d.SAL  >2000

--5.查询所有20部门的员工姓名，编号及薪水 
select e.ENAME  ,e.EMPNO ,e.SAL 
from EMP e
where e.DEPTNO  =20

--6.查询所有没有奖金的员工信息 
select *
from EMP f
where f.COMM is null
--7.查询所有有奖金的员工信息 
select *
from EMP g
where g.COMM is not null

--8.查询最高领导的员工信息 
select *
from EMP h
where h.MGR is null

--9.查询所有81年之后入职的员工信息
select *
from EMP i
where i.HIREDATE >='1982-01-01'
 

--10.查询所有薪水在2000-4000范围内的员工信息 
select *
from EMP  j
where j.SAL between 2000 and 4000
--11.查询所有部门编号是10或30的员工信息 
select *
from EMP k
where k.DEPTNO in('10','30')

--12.查询所有20部门并且薪水超过2000的员工信息：
select *
from EMP l
where l.DEPTNO =20 and l.SAL >2000 

--13.查询所有薪水不在2000-4000范围内的员工信息 
select *
from EMP o
where o.SAL between 2000 and 4000

--14.查询所有部门编号不是10，30的员工信息 
select *
from EMP p
where p.DEPTNO not in('10','30')

--15.查询用户名为scott的员工信息：注意区分大小写 
select *
from EMP q
where q.ENAME ='scott'

--16.查询姓名里面包含ALL的员工姓名 
select *
from EMP r
where r.ENAME like'%all%' 
--17.查询所有以”S”开头的同学 
select *
from EMP m
where m.ENAME like 's%'

--18.查询第二个字母为A的员工姓名 
select *
from EMP n
where n.ENAME like '_a%'
--19.查询所有员工的编号、姓名、部门编号、职位、薪水，按照薪水降序排列 
select s.EMPNO ,s.ENAME ,s.DEPTNO ,s.JOB ,s.SAL 
from EMP s
order by s.SAL desc

--20.查询所有员工信息，按照部门降序排列，部门内按照薪水升序排列 
select *
from EMP y
order by y.DEPTNO desc,y.SAL asc

--21.查询姓名中包含‘A’员工的姓名，编号，薪水，按照薪水降序排列 
select z.ENAME ,z.EMPNO ,z.SAL 
from EMP z
where z.ENAME like 'a%'
order by z.SAL desc


--22.查询年收入超过10000的员工的姓名，编号，薪水，年收入，按照年收入降序排列 
select u.ENAME ,u.EMPNO ,u.SAL, u.sal*12+COMM
from EMP u
where u.SAL *12+COMM >10000
order by u.sal*12 +comm desc

--23.查询年薪超过10000的员工的姓名，编号，薪水，年收入，按照年薪降序排列 

select u.ENAME ,u.EMPNO ,u.SAL, u.sal*12+COMM
from EMP u
where u.SAL *12+COMM >10000
order by u.sal*12 desc