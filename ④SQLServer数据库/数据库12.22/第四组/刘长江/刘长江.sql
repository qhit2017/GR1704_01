SELECT * FROM emp
  
--1.��ѯ�������˵Ĳ��ű�ţ�
SELECT DISTINCT a.DEPTNO
from emp a
WHERE  a.ENAME IS NOT null
--2.��ѯ���и�λ���ƣ�
SELECT DISTINCT b.JOB
from emp b 
--3.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT c.ENAME,c.SAL
from emp c
WHERE c.DEPTNO =20
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from emp d
where d.SAL >=2000
--5.��ѯ�����н����Ա����Ϣ 
SELECT *
FROM emp e
where e.COMM IS NOT NULL AND e.COMM!=0
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from emp f
WHERE f.COMM IS  NULL or f.COMM=0
--7.��ѯ����쵼��Ա����Ϣ 
SELECT *
from emp g
where g.MGR IS null
--8.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
from emp h
WHERE h.HIREDATE>'1981'
--9.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from emp i
where i.SAL>2000 AND i.SAL<4000
--10.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT *
from emp j
where j.DEPTNO=10 OR j.DEPTNO=30
--11.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT *
from emp k
where k.DEPTNO=20AND k.SAL>2000
--12.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from emp l
where l.SAL<2000 or l.SAL>4000
--13.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
from emp m
where m.DEPTNO!=10 AND m.DEPTNO!=30
--14.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд
SELECT *
from emp n
where n.ENAME ='SCOTT'
--15.��ѯ�����������ALL��Ա������ 
SELECT o.ENAME
from emp o
where o.ENAME LIKE '%ALL%'
--16.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT p.ENAME
from emp p
where p.ENAME like's%'
--17.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT q.ENAME
from emp q
where q.ENAME LIKE '_A%'
--18.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ��������
SELECT r.EMPNO,r.ENAME,r.DEPTNO,r.JOB,r.SAL
from emp r
ORDER BY r.sal DESC
 
