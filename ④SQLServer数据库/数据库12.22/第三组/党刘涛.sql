--dept ���ű�
SELECT * FROM DEPT
--1.��ѯ���еĲ��ű�ţ� 
SELECT q.DEPTNO
from DEPT q
--2.��ѯ�������˵Ĳ��ű�ţ� 
SELECT e.DNAME,e.DEPTNO
from DEPT e
--3.��ѯ���и�λ���ƣ�
SELECT c.JOB
from EMP c
 
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT *
from EMP d
 WHERE d.SAL>2000	
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT *
from EMP f
 WHERE f.DEPTNO='20'

--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
 from  EMP x
 WHERE x.COMM IS NULL

--7.��ѯ�����н����Ա����Ϣ 
SELECT *
FROM EMP v
 WHERE v.COMM IS NOT NULL 

--8.��ѯ����쵼��Ա����Ϣ 
SELECT TOP 1 *
from EMP z
 ORDER BY z.MGR DESC
 
 SELECT *
 from EMP s
  WHERE s.MGR IS NULL

--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
FROM  EMP b
 WHERE b.HIREDATE>'1981-01-01'

--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
FROM EMP g
 WHERE g.SAL>2000AND g.SAL<4000 

--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT *
FROM EMP m
 WHERE m.DEPTNO='10' OR m.DEPTNO='30'

--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ��
SELECT *
FROM EMP l
 WHERE l.DEPTNO='20'AND l.SAL>2000 

--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
FROM EMP p
 WHERE p.SAL NOT IN(2000,4000)
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
FROM EMP t
 WHERE t.DEPTNO NOT IN(10,30)

--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT *
FROM EMP k
 WHERE k.ENAME='scott'
--16.��ѯ�����������ALL��Ա������ 
SELECT *
FROM EMP r
 WHERE r.ENAME LIKE '%ALL%'

--17.��ѯ�����ԡ�S����ͷ��ͬѧ
SELECT *
FROM EMP U
 WHERE U.ENAME LIKE 's%' 

--18.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT *
from EMP h
 WHERE h.ENAME LIKE '_A%'

--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ��������
SELECT y.EMPNO,y.ENAME,y.DEPTNO,y.JOB
FROM EMP y
 ORDER BY y.SAL DESC

--20.��ѯ����Ա����Ϣ�����ղ��Ž������У������ڰ���нˮ�������� 
SELECT *
FROM EMP j
 
 ORDER BY j.DEPTNO DESC,j.SAL ASC


--21.��ѯ�����а�����A��Ա������������ţ�нˮ������нˮ�������� 
SELECT *
FROM EMP i
 WHERE i.ENAME LIKE'%a%'

--22.��ѯ�����볬��10000��Ա������������ţ�нˮ�������룬���������뽵������ 
SELECT a.ENAME,a.EMPNO,a.SAL,a.SAL*12+a.COMM
FROM EMP a
 WHERE a.SAL*12+a.COMM>10000
 ORDER BY a.SAL*12 DESC
--23.��ѯ��н����10000��Ա������������ţ�нˮ�������룬������н�������� 
SELECT o.ENAME,o.EMPNO,o.SAL,o.SAL*12
FROM EMP o
 WHERE o.SAL*12>10000
 ORDER BY o.SAL*12 DESC
 
 
