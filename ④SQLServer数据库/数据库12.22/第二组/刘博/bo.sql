SELECT * FROM EMP
--1.��ѯ���еĲ��ű�ţ�
SELECT a.empno
from EMP a

--2.��ѯ�������˵Ĳ��ű�ţ� 
SELECT b.deptno 
from EMP b
--3.��ѯ���и�λ���ƣ�
SELECT c.ename
from EMP c
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from EMP d
WHERE sal>2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT e.EMPNO,e.ENAME,e.SAL
from EMP e
WHERE DEPTNO=20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP f
WHERE SAL IS NULL
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
FROM EMP g
WHERE SAL>0

--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
FROM EMP h
WHERE MGR IS NULL

--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
from EMP i
WHERE i.HIREDATE>'1981-1-1'

--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ +
SELECT *
from EMP j
WHERE j.SAL>2000AND

--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT *
from EMP k
WHERE k.DEPTNO=10

--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ��

 SELECT *
FROM EMP l
WHERE l.SAL>2000

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ
 
SELECT *
from EMP m
WHERE m.SAL<2000 OR m.SAL>4000

--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
FROM EMP n
WHERE n.DEPTNO NOT IN 

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд
 
SELECT *
FROM EMP o
WHERE o.ENAME='SCOTT'

--16.��ѯ�����������ALL��Ա������ 

SELECT *
FROM EMP P
WHERE P.ENAME='%ALL%'

--17.��ѯ�����ԡ�S����ͷ��ͬѧ 

SELECT *
FROM EMP q
WHERE q.ENAME='S%'

--18.��ѯ�ڶ�����ĸΪA��Ա������ 

SELECT *
FROM EMP r
WHERE r.ENAME='_A%'


