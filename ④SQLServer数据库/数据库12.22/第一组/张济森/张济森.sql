SELECT * FROM emp
--1.��ѯ���еĲ��ű��
 SELECT DISTINCT a.DEPTNO as '���ű��'
 from emp a  
--2.��ѯ�������˵Ĳ��ű�ţ�
SELECT DISTINCT b.DEPTNO
from emp b
WHERE  b.ENAME IS NOT null
--3.��ѯ���и�λ���ƣ�
SELECT DISTINCT c.JOB
from emp c
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from emp d
where d.SAL >=2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT a.ENAME,a.SAL
from emp a
WHERE a.DEPTNO =20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from emp a 
WHERE a.COMM IS  NULL or a.COMM=0
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
FROM emp a 
where a.COMM IS NOT NULL AND a.COMM!=0
--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from emp a
where a.MGR IS null
--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
from emp a
WHERE a.HIREDATE>'1981'
--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from emp a
where a.SAL>2000 AND a.SAL<4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT *
from emp a
where a.DEPTNO=10 OR a.DEPTNO=30
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT *
from emp a
where a.DEPTNO=20AND a.SAL>2000
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from emp a
where a.SAL<2000 or a.SAL>4000
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
from emp a
where a.DEPTNO!=10 AND a.DEPTNO!=30
--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд
SELECT *
from emp a
where a.ENAME ='SCOTT'
--16.��ѯ�����������ALL��Ա������ 
SELECT a.ENAME
from emp a
where a.ENAME LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT a.ENAME
from emp a
where a.ENAME like's%'
--18.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT a.ENAME
from emp a
where a.ENAME LIKE '_A%'






