SELECT*FROM EMP
--1.��ѯ���еĲ��ű�ţ�
SELECT a.DEPTNO
from EMP a
--2.��ѯ�������˵Ĳ��ű�ţ� 
SELECT  DISTINCT b.DEPTNO
from EMP b
WHERE b.COMM is not NULL 
--3.��ѯ���и�λ���ƣ� 
SELECT c.JOB
from EMP c
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from EMP d
WHERE d.SAL>2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT e.EMPNO,e.SAL 
from EMP e
WHERE e.DEPTNO=20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP f
WHERE f.COMM IS NULL OR f.COMM=0
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
from EMP g
WHERE g.COMM IS NOT NULL AND g.COMM!=0
--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from EMP h
WHERE h.MGR IS NULL
--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT*
FROM EMP i
where i.HIREDATE>'1981-1-1'
--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT*
FROM EMP j
WHERE j.SAL>=2000 AND j.SAL<=4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT*
FROM EMP k
WHERE k.DEPTNO=10 OR k.DEPTNO=30
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT*
FROM EMP l
WHERE l.DEPTNO=20AND l.SAL>2000
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT*
FROM EMP m
WHERE m.SAL <2000 OR m.SAL>4000
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT*
from EMP n
WHERE n.DEPTNO!=10AND n.DEPTNO!=30
--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT*
FROM EMP o
WHERE o.ENAME='scott'
--16.��ѯ�����������ALL��Ա������ 
SELECT p.ENAME
from EMP p
where p.ENAME LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT *
from EMP q
where q.ENAME LIKE 'S%'
--18.��ѯ�ڶ�����ĸΪA��Ա������
 SELECT *
from EMP r
where r.ENAME LIKE '_A%'
--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ�������� 
SELECT s.EMPNO,s.ENAME,s.DEPTNO,s.JOB,s.SAL
FROM EMP s
ORDER BY s.SAL DESC