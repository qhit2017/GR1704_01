SELECT*FROM EMP
--1.��ѯ���еĲ��ű�ţ�
SELECT a.DEPTNO
from EMP a
--2.��ѯ�������˵Ĳ��ű�ţ� 
SELECT  DISTINCT a.DEPTNO
from EMP a
WHERE a.COMM is not NULL 
--3.��ѯ���и�λ���ƣ� 
SELECT a.JOB
from EMP a
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT a.EMPNO,a.ENAME,a.JOB,a.MGR,a.HIREDATE,a.SAL,a.COMM,a.DEPTNO
from EMP a
WHERE a.SAL>2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT a.ENAME, a.EMPNO,a.SAL 
from EMP a
WHERE a.DEPTNO=20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP a
WHERE a.COMM IS NULL OR a.COMM=0
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
from EMP a
WHERE a.COMM IS NOT NULL AND a.COMM!=0
--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from EMP a
WHERE a.MGR IS NULL
--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT*
FROM EMP a
where a.HIREDATE>'1981-1-1'
--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT*
FROM EMP a
WHERE a.SAL>=2000 AND a.SAL<=4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT*
FROM EMP a
WHERE a.DEPTNO=10 OR a.DEPTNO=30
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT*
FROM EMP a
WHERE a.DEPTNO=20AND a.SAL>2000
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT*
FROM EMP a
WHERE a.SAL <2000 OR a.SAL>4000
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT*
from EMP a
WHERE a.DEPTNO!=10AND a.DEPTNO!=30
--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT*
FROM EMP a
WHERE a.ENAME='scott'
--16.��ѯ�����������ALL��Ա������ 
SELECT a.ENAME
from EMP a
where a.ENAME LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT *
from EMP a
where a.ENAME LIKE 'S%'
--18.��ѯ�ڶ�����ĸΪA��Ա������
 SELECT *
from EMP a
where a.ENAME LIKE '_A%'
--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ�������� 
SELECT a.EMPNO,a.ENAME,a.DEPTNO,a.JOB,a.SAL
FROM EMP a
ORDER BY a.SAL DESC
--21.��ѯ�����а�����A��Ա������������ţ�нˮ������нˮ�������� 
 SELECT a.ENAME,a.EMPNO,a.SAL
from EMP a
where a.ENAME LIKE '%A%'
ORDER BY a.SAL DESC
