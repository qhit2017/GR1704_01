SELECT*FROM emp



--1.��ѯ���еĲ��ű�ţ� 
SELECT a.deptno as'���ű��'
from emp a

--2.��ѯ�������˵Ĳ��ű�ţ�
SELECT b.deptno 
from emp b

--3.��ѯ���и�λ���ƣ�
SELECT c.job AS '��λ����'
from emp c

--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from emp d
WHERE d.sal >2000

--5.��ѯ����20���ŵ�Ա����������ż�нˮ
SELECT e.ename, e.deptno,e.sal
from emp e
WHERE e.deptno=20

--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from emp f
WHERE f.comm IS NULL

--7.��ѯ�����н����Ա����Ϣ
SELECT*
from emp j
WHERE j.comm is NOT NULL
 
--8.��ѯ����쵼��Ա����Ϣ
SELECT*
from emp q
WHERE q.mgr IS NULL

--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT*
from EMP w
WHERE w.HIREDATE>1980-01-01


--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from EMP r
WHERE r.SAL >2000AND r.SAL<4000

--11.��ѯ���в��ű����10��30��Ա����Ϣ
SELECT *
from EMP t
WHERE t.DEPTNO=10 or t.DEPTNO=30
 
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ��
SELECT*
from EMP y
where y.DEPTNO=20AND y.SAL>2000
 
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT*
from EMP u
WHERE u.SAL<2000OR u.SAL>4000

--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ
SELECT*
from EMP i
WHERE  i.DEPTNO!=10AND i.DEPTNO!=30

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT
from EMP o
WHERE

--16.��ѯ�����������ALL��Ա������
SELECT m.ENAME
from EMP m
WHERE m.ENAME LIKE '%ALL%'

--17.��ѯ�����ԡ�S����ͷ��ͬѧ
SELECT *
from EMP v
where v.ENAME LIKE 's%'
 

--18.��ѯ�ڶ�����ĸΪA��Ա������
SELECT*
from EMP m
WHERE m.ENAME LIKE '_A%'
 

--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ��������
SELECT x.EMPNO,x.ENAME,x.MGR,x.JOB,x.MGR
FROM EMP x
ORDER BY x.SAL DESC

 

--20.��ѯ����Ա����Ϣ�����ղ��Ž������У������ڰ���нˮ�������� 
SELECT *
from EMP k
ORDER BY k.DEPTNO

--21.��ѯ�����а�����A��Ա������������ţ�нˮ������нˮ��������
SELECT n.ENAME,N.EMPNO,N.SAL
from EMP n 
WHERE n.ENAME LIKE'%A%'
ORDER BY n.SAL DESC


--22.��ѯ�����볬��10000��Ա������������ţ�нˮ�������룬���������뽵������ 

--23.��ѯ��н����10000��Ա������������ţ�нˮ�������룬������н�������� 


