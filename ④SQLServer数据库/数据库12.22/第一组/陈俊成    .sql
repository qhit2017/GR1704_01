--1.��ѯ���еĲ��ű�ţ� 
SELECT d.deptno
from emp d
--2.��ѯ�������˵Ĳ��ű�ţ�
SELECT a.deptno
from emp a
where a.deptno IS NOT NULL
--3.��ѯ���и�λ���ƣ�
SELECT b.job
from emp b
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from emp c
where c.comm+c.sal>2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT d.ename,d.empno,d.sal
from emp d
where d.deptno=20
--6.��ѯ����û�н����Ա����Ϣ
SELECT *
from emp e
where e.comm IS  NULL
--7.��ѯ�����н����Ա����Ϣ 
SELECT*
from emp f
where f.comm IS NOT NULL 
--8.��ѯ����쵼��Ա����Ϣ 
SELECT*
from emp g
WHERE g.mgr IS null
--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT h.hiredate,h.ename
from emp h
where h.hiredate>='1981'
--10 ��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 

SELECT *
from emp o
WHERE o.sal >2000 AND o.sal<4000


select *from  emp

--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT*
from emp j
where j.deptno=10 OR j.deptno=30
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 

SELECT *
from emp k
where  k.deptno=20 and k.sal>2000
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from emp i
WHERE i.sal<2000 AND  i.sal<4000
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ

SELECT*
from emp j
where j.deptno!=10 AND  j.deptno!=30

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT *
from emp m
where m.ename='scott'
--16.��ѯ�����������ALL��Ա������ 
SELECT*
from emp b
where b.ename LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT*
from emp z
where z.ename LIKE 's%'
--18.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT*
from emp x
where x.ename LIKE '_a%'









