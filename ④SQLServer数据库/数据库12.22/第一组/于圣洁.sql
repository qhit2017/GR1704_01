select *
from emp
--1.��ѯ���еĲ��ű�ţ� 
select a.DEPTNO  as'���ű��'
from EMP a


--2.��ѯ�������˵Ĳ��ű�ţ�
select b.DEPTNO  as'���ű��',b.ENAME as'Ա������'
from EMP b 

--3.��ѯ���и�λ���ƣ� 
select c. job as'��λ����'
from EMP c

--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
select *
from EMP d
where d.SAL  >2000

--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
select e.ENAME  ,e.EMPNO ,e.SAL 
from EMP e
where e.DEPTNO  =20

--6.��ѯ����û�н����Ա����Ϣ 
select *
from EMP f
where f.COMM is null
--7.��ѯ�����н����Ա����Ϣ 
select *
from EMP g
where g.COMM is not null

--8.��ѯ����쵼��Ա����Ϣ 
select *
from EMP h
where h.MGR is null

--9.��ѯ����81��֮����ְ��Ա����Ϣ
select *
from EMP i
where i.HIREDATE >='1982-01-01'
 

--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
select *
from EMP  j
where j.SAL between 2000 and 4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
select *
from EMP k
where k.DEPTNO in('10','30')

--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ��
select *
from EMP l
where l.DEPTNO =20 and l.SAL >2000 

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
select *
from EMP o
where o.SAL between 2000 and 4000

--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
select *
from EMP p
where p.DEPTNO not in('10','30')

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
select *
from EMP q
where q.ENAME ='scott'

--16.��ѯ�����������ALL��Ա������ 
select *
from EMP r
where r.ENAME like'%all%' 
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
select *
from EMP m
where m.ENAME like 's%'

--18.��ѯ�ڶ�����ĸΪA��Ա������ 
select *
from EMP n
where n.ENAME like '_a%'
--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ�������� 
select s.EMPNO ,s.ENAME ,s.DEPTNO ,s.JOB ,s.SAL 
from EMP s
order by s.SAL desc

--20.��ѯ����Ա����Ϣ�����ղ��Ž������У������ڰ���нˮ�������� 
select *
from EMP y
order by y.DEPTNO desc,y.SAL asc

--21.��ѯ�����а�����A��Ա������������ţ�нˮ������нˮ�������� 
select z.ENAME ,z.EMPNO ,z.SAL 
from EMP z
where z.ENAME like 'a%'
order by z.SAL desc


--22.��ѯ�����볬��10000��Ա������������ţ�нˮ�������룬���������뽵������ 
select u.ENAME ,u.EMPNO ,u.SAL, u.sal*12+COMM
from EMP u
where u.SAL *12+COMM >10000
order by u.sal*12 +comm desc

--23.��ѯ��н����10000��Ա������������ţ�нˮ�������룬������н�������� 

select u.ENAME ,u.EMPNO ,u.SAL, u.sal*12+COMM
from EMP u
where u.SAL *12+COMM >10000
order by u.sal*12 desc