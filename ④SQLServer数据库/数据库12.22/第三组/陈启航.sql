SELECT*FROM emp


--1.��ѯ���еĲ��ű�ţ�
SELECT a.EMPNO as'���ű��'
from EMP a 

--2.��ѯ�������˵Ĳ��ű�ţ�
SELECT b.EMPNO as'����',b.ENAME'Ա������'
from EMP b 

--3.��ѯ���и�λ���ƣ� 
SELECT q.JOB as'��λ����'
from EMP q

--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from EMP v
WHERE v.SAL>2000

--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT t.ENAME,t.EMPNO,t.SAL
from EMP t
WHERE t.EMPNO =20

--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP d
WHERE d.COMM IS NULL

--7.��ѯ�����н����Ա����Ϣ 
SELECT*
FROM EMP p
WHERE p.COMM IS NOT NULL

--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from EMP o
WHERE o.MGR IS NULL

--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
from EMP m
WHERE m.HIREDATE>='1981-01-01'


--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT  *
FROM EMP q
 WHERE q.SAL>2000AND q.SAL<4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT *
FROM EMP y
 WHERE y.DEPTNO='10'OR y.DEPTNO='30'

--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT *
FROM EMP p
 WHERE p.DEPTNO='20'AND p.SAL>2000

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
FROM EMP o
 WHERE o.SAL not IN(2000,4000)

--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
FROM EMP j
 WHERE j.DEPTNO NOT IN (10,30)

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT *
FROM EMP i
WHERE i.ENAME='scott'

--16.��ѯ�����������ALL��Ա������ 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE '%ALL%'

--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE 's%'
--18.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT *
FROM EMP i
WHERE i.ENAME LIKE '_A%'




