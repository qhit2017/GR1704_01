SELECT *FROM EMP
--1.��ѯ���еĲ��ű�ţ� 	
SELECT DISTINCT a.DEPTNO 
from EMP a	
--2.��ѯ�������˵Ĳ��ű�ţ� 
SELECT B.DEPTNO 
FROM EMP B
WHERE B.DEPTNO IS NOT NULL 
--3.��ѯ���и�λ���ƣ� 
SELECT C.DNAME
FROM DEPT C
--4.��ѯ����нˮ������ǧ��Ա����Ϣ 
SELECT D.ENAME ,D.SAL
FROM EMP D
WHERE D.SAL >2000
--5.��ѯ����20���ŵ�Ա����������ż�нˮ 
SELECT F.ENAME,F.EMPNO,F.SAL
FROM EMP F
WHERE F.DEPTNO =20
--6.��ѯ����û�н����Ա����Ϣ 
SELECT *
from EMP h
WHERE h.COMM is NULL  
--7.��ѯ�����н����Ա����Ϣ 
SELECT *
from EMP o
WHERE o.COMM is NOT NULL 
--8.��ѯ����쵼��Ա����Ϣ 
SELECT *
from EMP l
WHERE l.MGR IS NULL 
--9.��ѯ����81��֮����ְ��Ա����Ϣ 
SELECT *
FROM EMP p
WHERE p.HIREDATE>'1981'
--10.��ѯ����нˮ��2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
from EMP k
WHERE k.SAL >2000 AND k.SAL<4000
--11.��ѯ���в��ű����10��30��Ա����Ϣ 
SELECT  *
FROM EMP Q
WHERE Q.DEPTNO=10 OR Q.DEPTNO=30
--12.��ѯ����20���Ų���нˮ����2000��Ա����Ϣ�� 
SELECT *
FROM EMP P
WHERE P.DEPTNO =20 AND P.SAL >2000
--13.��ѯ����нˮ����2000-4000��Χ�ڵ�Ա����Ϣ 
SELECT *
FROM EMP J
WHERE J.SAL <2000 AND  J.SAL <4000
--14.��ѯ���в��ű�Ų���10��30��Ա����Ϣ 
SELECT *
FROM EMP Y
WHERE Y.DEPTNO NOT IN (10,30)
--15.��ѯ�û���Ϊscott��Ա����Ϣ��ע�����ִ�Сд 
SELECT *
FROM EMP F
WHERE F.ENAME ='scott'
--16.��ѯ�����������ALL��Ա������ 
SELECT *
FROM EMP V
WHERE V.ENAME LIKE '%ALL%'
--17.��ѯ�����ԡ�S����ͷ��ͬѧ 
SELECT *
FROM EMP S
WHERE S.ENAME LIKE 'S%%'
--18.��ѯ�ڶ�����ĸΪA��Ա������ 
SELECT *
FROM EMP X
WHERE X.ENAME LIKE '_A%'
--19.��ѯ����Ա���ı�š����������ű�š�ְλ��нˮ������нˮ�������� 
SELECT M.EMPNO ,M.ENAME ,M.DEPTNO ,M.JOB ,M.SAL 
FROM EMP M
ORDER BY M.SAL DESC 
--20.��ѯ����Ա����Ϣ�����ղ��Ž������У������ڰ���нˮ�������� 
SELECT *
FROM EMP N
ORDER BY N.DEPTNO DESC ,N.SAL 

